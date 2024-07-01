n = gets.to_i
p = gets.split.map(&:to_i)
q = p.sort
count = 0
for i in 0...n do
  count += 1 if p[i] != q[i]
end
puts (count <= 2) ? "YES" : "NO"
