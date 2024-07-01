x,y=gets.split.map!{|i|i.to_i}
s=gets.split.map!{|i|i.to_i}
sum=0
for i in 0..y-1
  sum+=s[i]
end
if x<=sum
  puts "Yes"
else
  puts "No"
end
