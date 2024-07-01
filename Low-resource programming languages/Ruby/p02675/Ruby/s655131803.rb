
num = gets
num = num[-1].to_i.chomp

hon = [2, 4, 5, 7, 9]
pon = [0, 1, 6, 8]

if hon.include?(num)
  puts 'hon'
elsif pon.include?(num)
  puts 'pon'
else
  pust 'bon'
end
