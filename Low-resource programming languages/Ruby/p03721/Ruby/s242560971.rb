N, K = gets.split.map(&:to_i)
a = Array.new(10**5 + 1, 0)
N.times do
  ai, bi = gets.split.map(&:to_i)
  a[ai] += bi
end
s = 0
ans = (1..(10**5+1)).find do |i|
  s += a[i]
  s >= K
end
p ans
