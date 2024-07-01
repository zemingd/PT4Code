a = (gets.to_i) % 10
hon = [2,4,5,7,9]
pon = [0,1,6,8]
bon = 3

if a == bon
  puts 'bon'
elsif pon.include?(a)
  puts 'pon'
else
  puts 'hon'
end