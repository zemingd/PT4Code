N = gets.to_i
a_list = gets.split.map(&:to_i)
sum = a_list.reduce(&:+)
n = sum - ((N + 1) * N / 2)
avg1 = n / N
avg2 = (n / N) + 1
ret1 = a_list.map.with_index do |a, i|
  (a - (avg1 + i + 1)).abs
end.reduce(&:+)
ret2 = a_list.map.with_index do |a, i|
  (a - (avg2 + i + 1)).abs
end.reduce(&:+)
ans = [ret1, ret2].min
puts ans
