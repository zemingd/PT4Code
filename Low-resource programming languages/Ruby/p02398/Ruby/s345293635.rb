i = gets
a = i.split[0].to_i
b = i.split[1].to_i
c = i.split[2].to_i
n = 0
while a <= b do
    n+=1 if c%a == 0
    a+=1
end 
print n,"\n"
