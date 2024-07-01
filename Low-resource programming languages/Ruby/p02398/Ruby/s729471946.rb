a, b, c = gets.split.map(&:to_i)
ans = 0
while a<=b do
if c%a==0 then
ans=ans+1
end
a=a+1
end
print ans,"\n"