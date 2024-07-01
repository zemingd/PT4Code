hp1,at1,hp2,at2=gets.split.map!(&:to_i)
kai1=0
kai2=0
while hp2>0
  hp2-=at1
  kai1+=1
end
while hp1>0
  hp1-=at2
  kai2+=1
end
puts kai1
puts kai2
if kai1<=kai2
  puts "Yes"
else
  puts "No"
end
