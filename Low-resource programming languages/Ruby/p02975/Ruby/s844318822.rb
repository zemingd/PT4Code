N = gets.to_i
A = gets.split.map(&:to_i)

puts A.inject(:^).zero? ? "Yes" : "No"