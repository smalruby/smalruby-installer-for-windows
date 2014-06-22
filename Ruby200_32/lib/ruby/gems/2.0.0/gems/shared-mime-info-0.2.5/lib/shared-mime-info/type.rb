# Copyright (c) 2006 Mael Clerambault <mael@clerambault.fr>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

require 'rexml/document'
require 'mime/types'

module MIME
  # Override the existing MIME::Type class
  OriginalType = Type
  MIME.send(:remove_const, :Type)

  # Type represents a single mime type such as <b>text/html</b>.  
  class Type < OriginalType
    attr_reader :magics, :glob_patterns
    
    def initialize(content_type) # :nodoc:
      @glob_patterns = []
      @magics = []
      super
    end

    # Returns a Hash of the comments associated with a mime type in
    # different languages.
    #
    #  MIME['text/html'].comment.default
    #   => "HTML page"
    #
    #  MIME['text/html'].comment['fr']
    #   => "page HTML"
    def comment
      file = ''
      MIME.mime_dirs.each { |dir|
        file = "#{dir}/#{content_type}.xml"
        break if File.file? file
      }

      comments = {}
      open(file) { |f|
        doc = REXML::Document.new f
        REXML::XPath.match(doc, '*/comment').each { |c|
          if att = c.attributes['xml:lang']
            comments[att] = c.text
          else
            comments.default = c.text
          end
        }
      }
      comments
    end

    # Returns all the types this type is a subclass of.
    def parents
      file = ''
      MIME.mime_dirs.each { |dir|
        file = "#{dir}/#{content_type}.xml"
        break if File.file? file
      }

      open(file) { |f|
        doc = REXML::Document.new f
        REXML::XPath.match(doc, '*/sub-class-of').collect { |c|
          MIME[c.attributes['type']]
        }
      }
    end

    # Check if _filename_ is of this particular type by comparing it to
    # some common extensions.
    #
    #  MIME['text/html'].match_filename? 'index.html'
    #   => true
    def matches_filename?(filename)
      basename = File.basename(filename)
      @glob_patterns.any? {|pattern| File.fnmatch pattern, basename.downcase}
    end

    # Check if _file_ is of this particular type by looking for precise
    # patterns (_magic_ numbers) in different locations of the file.
    #
    # _file_ must be an IO object opened with read permissions.
    def matches_file?(f)
      @magics.any? {|m| m =~ f }
    end
  end
end