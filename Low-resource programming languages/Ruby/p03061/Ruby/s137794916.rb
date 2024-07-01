N = gets.to_i
A = gets.split(' ').map(&:to_i)
max = 0
tmp = 0

A.combination(N - 1).each do |array|
  tmp = array.inject do |a, b|
    a.gcd(b)
  end
  max = tmp if tmp > max
end

puts max
