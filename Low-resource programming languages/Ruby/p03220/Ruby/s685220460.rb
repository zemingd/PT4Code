n = gets.to_i
t, a = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

res = arr.map do |x|
  (a - (t - x * 0.006)).abs
end

puts res.index(res.min) + 1
