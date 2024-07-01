a, b, c = gets.chomp.split.map(&:to_i)
(a..b).count {|n| c % n == 0 }