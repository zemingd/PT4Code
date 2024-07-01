N = gets.to_i
A = gets.split(' ').map(&:to_i)
gcd = []

N.times do |i|
  left  = A[0, i].inject(:gcd)
  right = A[i + 1, N - 1].inject(:gcd)

  left  = 0 if left.nil?
  right = 0 if right.nil?

  gcd.push([left, right].inject(:gcd))
end

puts gcd.max