a, b, c, d = gets.split.map(&:to_i)
count = []
(a..b).each do |n|
  count << n if n.between?(c, d)
end
puts count.empty? ? '0' : count.max - count.min
