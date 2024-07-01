a=gets.split.map(&:to_i)
if a.count(7)==2
 if a.count(5)==1
  puts "YES"
 end
else
 puts "NO"
end