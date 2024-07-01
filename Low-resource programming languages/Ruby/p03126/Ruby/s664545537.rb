n, m = gets.split(" ").map(&:to_i)
cnt = []
res = 0
for i in 0..(n-1) do
  p = gets.split(" ").map(&:to_i)
  cnt << p[1..p[0]]
end
cnt.flatten!

for j in 1..m do
  if cnt.count(j) == n
    res += 1
  end
end

puts res