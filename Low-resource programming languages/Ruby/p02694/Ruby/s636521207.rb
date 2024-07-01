# abc165 B
x = gets.to_i

m = 100.0
cnt = 0
while m < x
  cnt+=1
  m *= 1.01
  m = m.to_i
end
p cnt


