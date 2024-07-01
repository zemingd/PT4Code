n, m = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)

sum = 0
a.each do |i|
  sum += i
end


puts m >= sum / (4 * m) ? "Yes": "No"