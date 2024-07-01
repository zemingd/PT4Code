a=gets.to_i
b=a.times.map{gets.chomp.to_s}
d=1
stock="aa"
for c in b do
  if d!=1 && c[0]!=stock[-1] then
    puts "No"
    exit
  end
  stock=c
  d += 1
end    
  
if b.length==b.uniq.length then
  puts "Yes"
else
  puts "No"
end  