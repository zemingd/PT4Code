*abc = gets.split.map(&:to_i)

sorted = abc.sort_by { |n| -n }
ans = sorted[0] * 10 + sorted[1] + sorted[2]
puts ans
