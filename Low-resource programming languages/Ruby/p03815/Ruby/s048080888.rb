tokuten=gets.to_i
a=tokuten%11
b=tokuten/11

if a==0
  puts b*2
elsif a > 6
  puts b*2+2
else
  puts b*2+1
end