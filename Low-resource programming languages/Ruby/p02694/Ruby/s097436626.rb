k = gets.to_i
s = 100
c = 0

until s >= k
  s += (s*0.01).to_i
  c += 1
end

print(c)