n, x = gets.chomp.split.map(&:to_i)
y = gets.chomp.split.map(&:to_i)
d = (y[0] - x).abs
1.step(n - 1) do |i|
  break if d == 1
  d = d.gcd((y[i] - x).abs)
end
puts d