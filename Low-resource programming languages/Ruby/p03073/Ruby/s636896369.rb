bits = gets.strip.chars.map(&:to_i)
ans1 = []; ans2 = []
bits.size.times{|i| j=i[0]; ans1 << (bits[i] ^ j); ans2 << (bits[i] ^ (j^1)) }
puts [ans1.inject(:+), ans2.inject(:+)].min
