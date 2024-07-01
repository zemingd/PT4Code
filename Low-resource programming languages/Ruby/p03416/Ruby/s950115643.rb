a, b = gets.split.map(&:to_i)
count = 0
(a..b).each do |i|
  count += 1 if i.to_s.reverse.to_i == i
end
p count