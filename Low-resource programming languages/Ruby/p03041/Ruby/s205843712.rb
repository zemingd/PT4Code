a,b = gets.split(" ").map(&:to_i)
c = gets
c[b-1] = c[b-1].to_s.swapcase!
puts c