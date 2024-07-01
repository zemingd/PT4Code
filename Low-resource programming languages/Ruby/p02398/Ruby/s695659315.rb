a, b, c = gets.chomp.split.map(&:to_i)
puts (a..b).count {|n| c % n == 0 }