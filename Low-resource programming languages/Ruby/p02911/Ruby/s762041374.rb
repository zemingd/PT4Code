n = gets.chop.to_i
b = gets.chop.split.map(&:to_i)

a = []

a << b[0]

for i in 1..n-2 do
  a << [b[i-1], b[i]].min
end

a << b[n-2]




ans = 0
for elm in a do
  ans += elm
end

p ans