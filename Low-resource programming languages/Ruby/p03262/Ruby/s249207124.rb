# 最大公約数
def gcd(a, b)
  a, b = b, a if a > b
  until a == 0
    a, b = b % a, a
  end
  b
end

n, X = gets.chomp.split.map(&:to_i)
points = gets.chomp.split.map(&:to_i)
dif = points.map{ |p| (X - p).abs }.sort
m = dif.shift
dif.each do |k|
  m = gcd(m, k)
end

puts m
