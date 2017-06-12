fu! openfile#hello()
  echom "Hello, OpenFile world!"
endfu

fu! openfile#hello_ruby(file_name)
  ruby <<
    search = OpenFile::Search.new
    Vim::message search.find(Vim.evaluate('a:file_name'))
.
endfu
