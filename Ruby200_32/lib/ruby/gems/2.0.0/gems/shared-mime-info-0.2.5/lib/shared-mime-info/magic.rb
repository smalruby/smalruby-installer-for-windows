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

require 'magics'

module MIME
  module Magic # :nodoc: all
    class BadMagic < StandardError; end

    class Entry
      attr_reader :indent
      def initialize(indent, start_offset, value_length, value, mask, word_size, range_length)
        @indent = indent
        @start_offset = start_offset
        @value_length = value_length
        @value = value.freeze
        @mask = mask.freeze
        @word_size = word_size
        @range_length = range_length
        @sub_entries = []
      end

      def add_subentry(entry)
        if entry.indent == @indent + 1
          @sub_entries << entry
        elsif entry.indent > @indent + 1
          if not @sub_entries.empty?
            @sub_entries.last.add_subentry entry
          else
            raise BadMagic
          end
        else 
          raise BadMagic
        end
      end

      def =~(f)
        check_file(f) and (@sub_entries.empty? || @sub_entries.any? {|e| e =~ f})
      end

      private
      def check_file(f)
        f.pos = @start_offset
        r = (f.read(@value_length + @range_length -1)|| '').unpack("c*")
        range_length = 0
        found = false
        while not found and range_length < r.size
          found = @value.zip(@mask, r[range_length, @value_length]).all? {|vb, mb, rb| (rb & mb) == (vb & mb) }
          range_length = range_length + 1
        end
        found
      end
    end

    class RootEntry < Entry
      attr_reader :priority, :type
      def initialize(type, priority)
        @indent = -1
        @type = type
        @priority = priority
        @sub_entries = []
      end

      private
      def check_file(*args) true end
    end
  end
end