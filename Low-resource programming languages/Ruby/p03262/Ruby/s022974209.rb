n, s = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x << s
x.sort_by!{|y| y}
y = []
n.times do |i|
  y << (x[i + 1] - x[i])
end
puts y.inject{|a, b| a.gcd(b)}