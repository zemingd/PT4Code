a,b = gets.split.map(&:to_s)

sum = 0
(a..b).each do |x|
  y = x.reverse
  sum += 1 if y == x
end

p sum