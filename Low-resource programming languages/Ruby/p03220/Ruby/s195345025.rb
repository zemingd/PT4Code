n = gets.to_i
t, a = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)

arr = h.map do |i|
  t - (i * 0.006)
end
m = arr.min_by { |i| (a - i).abs }
p arr.index(m) + 1
