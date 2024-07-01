input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
puts a.odd? && b.odd? ? "Yes" : "No"