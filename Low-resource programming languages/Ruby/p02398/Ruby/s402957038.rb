a, b, c = gets.split.map(&:to_i)

puts (a..b).count {|i| c % i == 0}

