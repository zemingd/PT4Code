n=gets.to_i
i=1
while i<=n
if i%3==0||i%10==3
print" #{i}"
end
j=i
while j>0
j /= 10
if j%10==3
print" #{i}"
j=0
end
end
i+=1
end
puts