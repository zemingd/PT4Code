n = gets.to_i
t, a = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)
res = []
n.times do |i|
  res[i] = (a  - (t - arr[i] * 0.006)).abs
end
puts res.index(res.min) + 1