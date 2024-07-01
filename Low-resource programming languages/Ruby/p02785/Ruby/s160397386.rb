N, K = gets.split(' ').map(&:to_i)
hs = gets.split(' ').map(&:to_i)

puts K >= N ? 0 : hs.sort!.reverse![K..-1].inject(&:+)