a,b,c,d=gets.chomp.split(' ').map(&:to_i)
m=c.lcm(d)
s=(b-a+1)-(b/c.to_i)+((a-1)/c.to_i)-(b/d.to_i)+((a-1)/d.to_i)+(b/m.to_i)-((a-1)/m.to_i)
print("#{s}\n")