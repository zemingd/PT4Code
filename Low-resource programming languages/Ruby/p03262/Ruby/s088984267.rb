n,x = gets.split.map(&:to_i)
x_ary = gets.split.map(&:to_i)
sa_ary = []
sa_ary[0] = (x_ary[0] - x).abs
(1..n-1).each do |i|
  sa_ary[i] = (x_ary[i] - x_ary[i-1]).abs
end
gcd = sa_ary[0]
sa_ary.each do |i|
  gcd = gcd.gcd(i)
end
puts gcd