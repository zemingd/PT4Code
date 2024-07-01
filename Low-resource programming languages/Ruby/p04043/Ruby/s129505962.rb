num = gets.strip.split.map(&:to_i)
if num.count(5)==2 && num.count(7)==1
  puts "YES"
else
  puts "NO"
end