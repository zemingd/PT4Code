n = gets.chomp.to_i
n = n.to_s[-1].to_i

hon = [2, 4, 5, 7, 9]
pon = [0, 1, 6, 8]
bon = [3]

puts 'hon' if hon.include?(n)
puts 'pon' if pon.include?(n)
puts 'bon' if bon.include?(n)
