n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = 0
rest = 0
n.times do |i|
  beat = [b[i] + rest, a[i]].min
  rest = [b[i] + rest - a[i], 0].max
  ans += beat
end
ans += [rest, a[n]].min
puts ans