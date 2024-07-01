L = gets.chomp.to_i

line1 = L / 3.to_f
line2 = L / 3.to_f
line3 = L - (line1 + line2)
# p line3

puts line1 * line2 * line3