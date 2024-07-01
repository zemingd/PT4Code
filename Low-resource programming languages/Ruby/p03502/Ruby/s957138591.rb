s = gets.chomp
n = s.to_i
m = s.split('').map(&:to_i).reduce(:+)
puts ((n % m == 0) ? "Yes" : "No")