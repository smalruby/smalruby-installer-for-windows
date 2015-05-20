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

require 'shared-mime-info/magic'
require 'shared-mime-info/type'
require 'shared-mime-info/version'

# This provides a way to guess the mime type of a file by doing both
# filename lookups and _magic_ file checks. This implementation tries to
# follow the version 0.13 of the
# specification[http://standards.freedesktop.org/shared-mime-info-spec/shared-mime-info-spec-0.13.html].
module MIME
  class << self
    attr_reader :mime_dirs # :nodoc:

    # Returns the MIME::Type object corresponding to _type_.
    def [](type)
      @types.fetch type, nil
    end

    # Look for the type of a file by doing successive checks on
    # the filename patterns.
    #
    # Returns a MIME::Type object or _nil_ if nothing matches.
    def check_globs(filename)
      basename = File.basename(filename)
      found = @globs.each_key.select { |pattern| File.fnmatch pattern, basename }

      if found.empty?
        downcase_basename = basename.downcase
        found = @globs.each_key.select { |pattern|
          File.fnmatch pattern, downcase_basename
        }
      end

      @globs[found.max]
    end

    # Look for the type of a file by doing successive checks on
    # _magic_ numbers.
    #
    # Returns a MIME::Type object or _nil_ if nothing matches.
    def check_magics(file)
      if file.respond_to? :read
        check_magics_type(file, @magics)
      else
        open(file) {|f| check_magics_type(f, @magics) }
      end
    end

    # Look for the type of a file by doing successive checks with
    # the filename patterns or magic numbers. If none of the matches
    # are successful, returns a type of <b>application/octet-stream</b> if
    # the file contains control characters at its beginning, or <b>text/plain</b> otherwise.
    #
    # Returns a MIME::Type object.
    def check(filename)
      check_special(filename) ||
      open(filename) { |f|
        check_magics_gt80(f) ||
        check_globs(filename) ||
        check_magics_lt80(f) ||
        check_default(f)
      }
    end

    private
    def check_magics_type(f, set); c = set.find {|m| m =~ f} and MIME[c.type] end
    def check_magics_gt80(f); check_magics_type(f, @magics_gt80) end
    def check_magics_lt80(f); check_magics_type(f, @magics_lt80) end

    def check_special(filename)
      case File.ftype(filename)
      when 'directory' then @types['inode/directory']
      when 'characterSpecial' then @types['inode/chardevice']
      when 'blockSpecial' then @types['inode/blockdevice']
      when 'fifo' then @types['inode/fifo']
      when 'socket' then @types['inode/socket']
      else
        nil
      end
    end

    def check_default(f)
      f.pos = 0
      firsts = f.read(32) || ''
      bytes = firsts.unpack('C*')
      if bytes.any? {|byte| byte < 32 && ![9, 10, 13].include?(byte) }
        @types['application/octet-stream']
      else
        @types['text/plain']
      end
    end

    def load_globs(file)
      open(file) { |f|
        f.each { |line|
          next if line =~ /^#/
          cline = line.chomp
          type, pattern = cline.split ':', 2
          @types[type].glob_patterns << pattern
          @globs[pattern] = @types[type] unless @globs.has_key? pattern
        }
      }
    end

    def load_magic(file)
      @magics.concat Magic.parse_magic(File.read(file))
    end
  end
  
  xdg_data_home = ENV['XDG_DATA_HOME'] || "#{ENV['HOME']}/.local/share"
  xdg_data_dirs = ENV['XDG_DATA_DIRS'] || "/usr/local/share:/usr/share"

  @mime_dirs = (xdg_data_home + ':' + xdg_data_dirs).split(':').collect { |dir|
    "#{dir}/mime"
  }

  @types = Hash.new {|h,k| h[k] = Type.new(k)}
  @magics = []
  @globs = {}

  @mime_dirs.each {|dir|
    glob_file =  "#{dir}/globs"
    load_globs glob_file if File.file? glob_file

    magic_file =  "#{dir}/magic"
    load_magic magic_file if File.file? magic_file
  }

  @magics.sort! {|a,b| b.priority <=> a.priority}
  @magics.each {|m| @types[m.type].magics << m}
  @magics_gt80, @magics_lt80 = @magics.partition {|m| m.priority >= 80}
end
