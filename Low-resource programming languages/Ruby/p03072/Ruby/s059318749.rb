gets
h = gets.strip.split(" ").map(&:to_i)

ans = 1
max = h[0]
1.upto(h.size - 1) do |i|
  ans += 1 if h[i] >= max
  max = h[i] if h[i] > max
end

puts ans