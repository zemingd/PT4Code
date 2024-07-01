n = gets.to_i
h = gets.split.map(&:to_i)

max = 0
ans = 0

h.each do |x|
  ans += 1 if x >= max
  max = [x, max].max
end
puts ans