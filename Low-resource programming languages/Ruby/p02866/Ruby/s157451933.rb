n = gets.to_i
d = gets.split.map(&:to_i)
h = Hash.new(0)
d.each do |x|
  h[x] += 1
end
ans = h[0]
1.upto(h.size - 2) do |i|
  ans *= h[i] ** h[i + 1]
end
puts ans