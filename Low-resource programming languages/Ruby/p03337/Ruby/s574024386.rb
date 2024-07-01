a,b = gets.split(" ").map(&:to_i)

ans = a + b
if a - b > ans then
  ans = a - b
end
if a * b > ans then
  ans = a * b
end
print ans