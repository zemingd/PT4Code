a=gets.chomp.split.map(&:to_i)
i=[]
a[0].times do 
  i.push(0)
end
i[0]=1
u=[]
m=0
a[1].times do 
  b=gets.chomp.split.map(&:to_i)
  if u.include?(b[0])==true&&i[b[0]-1]==b[1]
  elsif u.include?(b[0])==true
        m+=1
      puts -1
      break
  else i[b[0]-1]=b[1]
    u.push(b[0])
  end
end
1.times do
  if m!=0
    break
  end
if i[0]==0&&a[0]==1
  puts 0
  break
elsif i[0]==0
  puts -1
else puts i.join
end
end
  
