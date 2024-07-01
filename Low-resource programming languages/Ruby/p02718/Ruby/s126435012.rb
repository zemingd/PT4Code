n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
cnt = 0
sum = a.inject(&:+)
a.each do |ai|
  cnt += 1 if ai * 4 * m >= sum
end
puts cnt >= m ? "Yes" : "No"
