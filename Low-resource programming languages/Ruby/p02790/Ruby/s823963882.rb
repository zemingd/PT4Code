line = gets.split(' ')

a = line[0]
b = line[1]

a_s = ""
for i in 1..b.to_i do
  a_s += a
end

b_s = ""
for i in 1..a.to_i do
  b_s += b
end

ans = [a_s, b_s].sort

print ans[0]