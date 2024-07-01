a, b, c, d = gets.split.map(&:to_i)
count = 0
(a..b).each do |n|
  count += 1 if n.between?(c+1, d)
end
puts count
