N = gets.to_i
A = gets.split(' ').map(&:to_i)

hp = A[0]
(N - 1).times do |i|
  hp = hp.gcd(A[i])
end

puts hp