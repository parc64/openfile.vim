
ruby $LOAD_PATH.unshift File.join(File.dirname(Vim.evaluate('expand("<sfile>")')), '../lib')
ruby require 'open_file'

command! OpenFile call openfile#hello()
command! OpenFileRuby call openfile#hello_ruby('openfilevim')
