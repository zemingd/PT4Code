input = gets.chomp.split
a = input[0].to_f
b = input[1].to_f
c = input[2].to_f

puts Math.sqrt(c) - Math.sqrt(a) - Math.sqrt(b) > 0 ? "Yes" : "No"