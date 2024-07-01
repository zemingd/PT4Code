N = gets.to_i
a = gets.split.map(&:to_i)
d = [0]

a.each_with_index do |aa, i|
  d << d[i] + aa
end

ans = (d[N] - d[1] * 2).abs
2.upto(N - 1) do |i|
  t = (d[N] - d[i] * 2).abs
  ans = t if t < ans
end
p ans
