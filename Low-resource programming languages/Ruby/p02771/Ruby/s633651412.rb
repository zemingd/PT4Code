num = gets.strip.split.map(&:to_i)
s = num.uniq.size
if s == 2 then
  puts "Yes"
else
  puts "No"
end