a,b,c,d=gets.split.map &:to_i
i=0
while true
  if c<=0
    puts "Yes"
    break
  end
  if a<=0
    puts "No"
    break
  end
  a-=d
  c-=b
  i+=1
end
