n = gets.to_i

str = n.to_s.split("").map(&:to_i).inject(:+)

puts n % str == 0 ? 'Yes' : 'No'
