N = gets.to_i
a = []
N.times do
  a << gets.to_i
end

b = 1
ans = -1
for i in 1..N
  b = a[b - 1]
  if 2 == b
    ans = i
    break
  end
end

p ans
