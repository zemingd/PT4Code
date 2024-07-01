b=n=gets.to_i
a=0
while b>0 do
a+=b%10
b/=10
end
puts n%a==0?"Yes":"No"        

