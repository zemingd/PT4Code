n=gets.to_i
if(n<1||n>10000)
  puts "No"
  exit
end

a=gets.to_i
if(a<0||n>1000)
  puts "No"
  exit
end

n=n%500
if(n%a==0)
  puts "Yes"
else
  puts "No"
end