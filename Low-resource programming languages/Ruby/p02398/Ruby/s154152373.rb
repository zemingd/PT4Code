a,b,c = gets.split.map &:to_i
i=0
while a<=b
c%a==0?i+=1:
a+=1
end
puts i