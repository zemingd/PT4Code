N, *AS = $stdin.read.split.map(&:to_i)

x = AS[0]
y = AS.inject(:+) - x
ans = (x-y).abs
for i in 1..(N-2)
  x += AS[i]
  y -= AS[i]
  diff = (x-y).abs
  ans = diff if diff < ans
end
p ans
