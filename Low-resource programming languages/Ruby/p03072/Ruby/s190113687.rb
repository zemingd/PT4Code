n = gets.to_i
h = gets.split.map(&:to_i)
max_h = 0
count = 0
n.times do |i|
  if h[i] >= max_h
    count += 1
    max_h = h[i]
  end
end
puts count
