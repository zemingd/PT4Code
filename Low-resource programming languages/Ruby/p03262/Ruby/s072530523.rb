n, x = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

ans = (x - xs[0]).abs
n.times do |i|
  d = (x - xs[i]).abs

  ans = ans.gcd(d)
end

puts ans
