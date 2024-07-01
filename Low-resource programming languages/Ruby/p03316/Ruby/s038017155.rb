n=gets
s=0
for i in 0...n.length do
  s+=n[i].to_i
end
if n.to_i % s == 0 then
  puts "Yes"
else
  puts "No"
end
