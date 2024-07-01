n = gets.to_i
t, a = gets.split.map(&:to_i)
height_set = gets.split.map(&:to_i)
mean_temp_set = []

n.times do |i|
  mean_temp_set << t - height_set[i] * 0.006
end

minimum = 100000
best = 0
(0...mean_temp_set.length).each do |i|
  if (mean_temp_set[i] - a).abs < minimum
    minimum = (mean_temp_set[i] - a).abs
    best = i + 1
  end
end

puts best