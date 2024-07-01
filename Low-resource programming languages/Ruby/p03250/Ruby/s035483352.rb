a,b,c = gets.split(" ")

AB = a + b
BC = b + c
CA = c + a

ABtoi = AB.to_i
BCtoi = BC.to_i
CAtoi = CA.to_i

a = a.to_i
b = b.to_i
c = c.to_i

if ABtoi <= BCtoi then
 max = BCtoi + a
 elsif max=ABtoi + c
end

if max <= CAtoi then
 max = CAtoi + b
end

print max