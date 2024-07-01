num = gets.to_i
keta = num.digits
total = 0

keta.each do |n|
  total += n
end

if (num % total) == 0 
  puts "Yes\n"
else
  puts "No\n"
end
