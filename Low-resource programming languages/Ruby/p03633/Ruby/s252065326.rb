n = gets.to_i
b = 1
for num in 1..n do
  a = gets.to_i
  b = a.lcm(b)
end
p b