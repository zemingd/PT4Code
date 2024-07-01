n = gets.chomp.to_i
sn = 0
tmp = n
while tmp != 0
  sn += n%10
  tmp /= 10
end
if n%sn == 0
  puts "Yes"
else
  puts "No"
end
