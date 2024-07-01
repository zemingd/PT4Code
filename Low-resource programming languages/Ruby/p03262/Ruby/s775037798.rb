n, s = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x << s
y = []
x.sort.each_with_index do |z, i|
  y << x[i + 1] - x[i] if i < n
end
puts y.inject{|a, b| a.gcd(b)}