gets
d = gets.split.map(&:to_i)
m = d.max.pred
h = Hash.new(0)
d.each do |x|
  h[x] += 1
end
if h[0] != 1
  puts '0'
  exit
end
ans = h[0]
1.upto(m) do |i|
  ans *= h[i] ** h[i + 1]
  ans %= 998244353
end
puts ans