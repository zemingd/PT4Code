a, b, c, k = $stdin.read.split.map(&:to_i)
ma = [a,b,c].max
sum = a + b + c - ma

k.times do
  ma *= 2
end

p sum + ma