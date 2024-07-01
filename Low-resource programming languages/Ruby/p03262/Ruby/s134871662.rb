N, x = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

x_min = xs.min

xs.map! { |v| v - x_min }
x -= x_min

gcd = 0
xs.each do |xx|
  gcd = gcd.gcd(xx)
end

puts gcd.gcd(x)