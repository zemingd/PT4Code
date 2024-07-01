n = gets.chomp.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
min = 1000000
ind = -1
h.each_index do |i|
  diff = (t - h[i] * 0.006 - a).abs
  if diff < min
    min = diff
    ind = i
  end
end
puts ind+1
