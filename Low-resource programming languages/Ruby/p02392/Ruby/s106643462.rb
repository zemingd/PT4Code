a = gets.split " "
b = true

b = false if a[0].to_i > a[1].to_i
b = false if a[1].to_i > a[2].to_i

puts "Yes" if b
puts "No" if !b