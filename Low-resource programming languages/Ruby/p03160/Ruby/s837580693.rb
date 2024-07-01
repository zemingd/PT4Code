n = gets.to_i
h = gets.split.map(&:to_i)

c = [0, (h[0] - h[1]).abs]
(2..(n - 1)).each do |i|
  c[i] = [c[i - 1] + (h[i - 1] - h[i]).abs, c[i - 2] + (h[i - 2] - h[i]).abs].min
end

puts c[-1]
