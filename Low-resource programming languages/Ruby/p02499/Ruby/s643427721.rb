text = STDIN.read
[*?a..?z].each do |c|
puts '%s : %d'%[c, text.count(c) + text.count(c.swapcase)]
end