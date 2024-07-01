n = gets.to_i

while n / 10 != 0
  n %= 10
end

hon = [2,4,5,7,9]
pon = [0,1,6,8]

if hon.include?(n)
  puts "hon"
elsif pon.include?(n)
  puts "pon"
else
  puts "bon"
end
