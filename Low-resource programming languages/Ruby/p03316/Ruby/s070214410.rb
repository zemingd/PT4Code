num = gets.to_i
string = num.to_s.split(//)
total = 0
string.each do |n|
  total += n.to_i
end


ans = num % total

if ans == 0.0 then
  puts "Yes\n"
else
  puts "No\n"
end