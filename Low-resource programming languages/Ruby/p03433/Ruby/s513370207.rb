n=gets
if(n<1||n>10000)
  puts "No"
  break
end

a=gets
if(a<0||n>1000)
  puts "No"
  break
end

n=n%500
if(n%a==0)
  puts "Yes"
else
  puts "No"
end