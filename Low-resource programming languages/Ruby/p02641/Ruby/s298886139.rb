x, n = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
np = (-100..100).to_a - p
min = 101
ans = 0
np.each do |i|
  d = (x - i).abs
  if d < min
    min = d
    ans = i
  end
end
puts ans
