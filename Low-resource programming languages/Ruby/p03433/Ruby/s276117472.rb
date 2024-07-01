n = gets.to_i
a = gets.to_i

x = n - n / 500 * 500

puts x <= a ? "Yes" : "No"