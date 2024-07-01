a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
c=0
d=0
a[1].times do 
  c+=b[d]
  d+=1
end
 
if a[0]<=c
  puts "Yes"
else puts "No"
end