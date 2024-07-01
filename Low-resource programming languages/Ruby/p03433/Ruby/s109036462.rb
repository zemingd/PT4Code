n = gets.chomp.to_i
a = gets.chomp.to_i

c = n / 500
d = n - (c * 500)

puts (d <= a ? "Yes" : "No")