N, K = gets.chop.split.map(&:to_i)
H = gets.chop.split(' ').map(&:to_i)

H.sort!.reverse!
h = H[K..-1]

puts h ? h.inject(:+) : 0
