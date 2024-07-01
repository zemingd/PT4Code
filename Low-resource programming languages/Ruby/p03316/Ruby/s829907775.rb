n=gets
sum=0
a = n.length
for i in 0...a do
  sum += n[i].to_i
end
if(n.to_i % sum == 0)then
  puts "Yes"
else
  puts "No"
end
