text = STDIN.read
[?a..?z].each do |c|
puts '%c : %d'%[c, text.count(c) + text.count(c.swapcase)]
end