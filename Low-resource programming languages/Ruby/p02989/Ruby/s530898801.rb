n = gets.to_i
ary = gets.split.map(&:to_i).sort
abc = ary[(n/2)-1]
arc = ary[n/2]
if abc == arc
  puts 0
else
  puts arc-(abc+1)+1
end