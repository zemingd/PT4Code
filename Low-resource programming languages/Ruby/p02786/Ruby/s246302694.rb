h = gets.to_i
6.times{|i| h |= h>>2**i}
p h