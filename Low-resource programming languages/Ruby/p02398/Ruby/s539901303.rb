a, b, c = gets.chomp.split(/\s/).map(&:to_i)
puts (a..b).count {|i| c % i == 0}