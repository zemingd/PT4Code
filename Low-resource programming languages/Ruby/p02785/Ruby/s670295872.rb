a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
b=b.sort.reverse

b.slice!(0,a[1])
c=0
d=0
if b.length>0
  (b.length).times do 
   d+=b[c]
    c+=1
  end
  puts d
else puts 0
end
