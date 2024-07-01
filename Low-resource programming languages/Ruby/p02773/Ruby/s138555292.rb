n = gets.to_i
s = readlines.map(&:chomp)
h = Hash.new(0)
max = 0
s.each do |i|
  h[i] += 1
  max = h[i] if max < h[i]
end

ans = []
h.each do |a,b|
  ans << a if b == max
end

puts ans.sort