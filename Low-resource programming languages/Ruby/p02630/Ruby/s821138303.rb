n = gets.to_i
a = gets.chomp.split.map(&:to_i)
res = 0
hs = Hash.new(0)
a.each do |x|
  hs[x] += 1
  res += x
end

q = gets.to_i
q.times do
  b, c = gets.chomp.split.map(&:to_i)
  res -= b * hs[b]
  res += c * hs[b]
  puts res
  hs[c] += hs[b]
  hs[b] -= hs[b]
end