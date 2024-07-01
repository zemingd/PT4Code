a, b = gets.split.map(&:to_i)
count = 0

(a..b).each do |x|
  count += 1 if x.to_s == x.to_s.reverse
end

puts count