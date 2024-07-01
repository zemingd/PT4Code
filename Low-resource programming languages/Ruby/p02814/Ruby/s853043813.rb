n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

l = 1
a.each do |x|
  l = l.lcm(x / 2)
end
puts (m + l) / (2 * l)