a=gets.chomp.to_i
b=gets.chomp.split("")
now=0
c=a
(a-1).times do 
  if b[now]==b[now+1]
     c-=1
  end
  now+=1
end
puts c