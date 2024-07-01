a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

ans = a + b + c + d + e
ans += 10 - (a % 10) if a % 10 != 0
ans += 10 - (b % 10) if b % 10 != 0
ans += 10 - (c % 10) if c % 10 != 0
ans += 10 - (d % 10) if d % 10 != 0
ans += 10 - (e % 10) if e % 10 != 0
datas =  [10 - (a % 10),10 - (b % 10),10 - (c % 10),10 - (d % 10),10 - (e % 10)]
datas.delete(10)
offset = 0
if datas.size != 0
  offset = datas.max
end
ans -= offset
puts ans.to_s