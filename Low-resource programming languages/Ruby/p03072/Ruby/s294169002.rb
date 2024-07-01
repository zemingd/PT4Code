n = gets.strip.to_i
h = gets.strip.split(' ').map(&:to_i)
c = 1
n.times do |i|
  next if i < 1
  r = h[0..(i - 1)].all? { |j| j <= h[i] }
  c += 1 if r && h[i-1] <= h[i]
end
puts c