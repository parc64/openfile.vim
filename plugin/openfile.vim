
ruby $LOAD_PATH.unshift File.join(File.dirname(Vim.evaluate('expand("<sfile>")')), '../lib')
ruby require 'open_file'

command! OpenFileTest call openfile#hello()
command! OpenFile call openfile#file_search('openfilevim')
