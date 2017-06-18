require "open_file/version"
require 'fuzzy_match'
require 'pry'

module OpenFile
  class Search
    def initialize
      @files = Dir["./**/*"]
      @fuzzy_match = FuzzyMatch.new(@files, find_all: true)
    end

    def find file_name
      display_list {
        @fuzzy_match.find(file_name)
      }
    end

    def display_list
      display_str = ""
      yield.map { |e| display_str << Vim.escape(e << "\n") }
      display_str
    end
  end
end
