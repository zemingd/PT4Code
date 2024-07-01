N = gets.to_i
A = gets.split.map(&:to_i)

gcd = 0
N.times do |i|
  gcd = gcd.gcd(A[i])
end
puts gcd