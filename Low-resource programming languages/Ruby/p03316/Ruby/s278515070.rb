num = gets.to_i
keta = num.digits
total = 0

keta.each do |n|
  total += n
end
ans = num % total

if ans == 0.0 then
  puts "Yes\n"
else
  puts "No\n"
end
