a, b, c, d = gets.split.map(&:to_i)
puts (a..b).reject { |n| n % c == 0 || n % d == 0 }.size