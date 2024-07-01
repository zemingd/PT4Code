a, b, c = gets.split.map(&:to_i)
puts (a..b).count { |n| c % n == 0 }