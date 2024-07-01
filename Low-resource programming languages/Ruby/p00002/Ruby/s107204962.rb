while line = gets do
a,b=line.split.map(&:to_i)
c=a+b
i=1
while c>=10
c/=10
i+=1
end
puts i
end