require "open_file/version"
require 'fuzzy_match'

module OpenFile
  class Search
    def initialize
      @files = Dir["./**/*"]
      @fuzzy_match = FuzzyMatch.new(@files, find_all: true)
    end

    def find file_name
      @fuzzy_match.find(file_name)
    end
  end
end
