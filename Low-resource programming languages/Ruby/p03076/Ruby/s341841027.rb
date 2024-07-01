a=gets.to_i
b=gets.to_i
c=gets.to_i
d=gets.to_i
e=gets.to_i
p=[]
p[0]=(a%10 !=0) ? 10-a%10 : 0
p[1]=(b%10 !=0) ? 10-b%10 : 0
p[2]=(c%10 !=0) ? 10-c%10 : 0
p[3]=(d%10 !=0) ? 10-d%10 : 0
p[4]=(e%10 !=0) ? 10-e%10 : 0

p.sort!
sum = p[0]+p[1]+p[2]+p[3]
puts (a+b+c+d+e)+sum