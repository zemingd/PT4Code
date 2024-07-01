def five a,b,num
  a*a*a*a*a-b*b*b*b*b==num
end


num=gets.strip.to_i
a=-120
b=-120
flag=true
while(a<=120 && flag)
  b=-120
  while(b<=120 && flag)
    flag=false if five(a,b,num)
    b+=1 if flag
  end
  a+=1 if flag
end
puts "#{a} #{b}"