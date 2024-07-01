a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
b=b.sort.reverse

a[1].times do 
  b.delete_at(0)
end
c=0
d=0

if b.length>0
  (b.length).times do 
   d+=b[c]
    c+=1
    d+=1
  end
  puts d
else puts 0
end
