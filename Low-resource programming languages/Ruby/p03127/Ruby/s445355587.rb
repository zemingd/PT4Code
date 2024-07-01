_ = gets
a = gets.chomp.split.map(&:to_i)
g = a.shift
a.each do |i|
  break if g == 1
  g = g.gcd(i)
end
puts g