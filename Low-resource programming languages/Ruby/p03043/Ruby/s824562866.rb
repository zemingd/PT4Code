a = STDIN.gets.split
n = a[0].to_i
k = a[1].to_i

p = 0.0

for i in 1..n do
  c = 1
  t = 0
  while i*c < k do
    c <<= 1
    t += 1
  end
  p += (0.5**t) / n
end

puts p
