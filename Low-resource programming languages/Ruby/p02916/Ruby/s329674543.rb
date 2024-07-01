N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

ans = 0
before = Float::INFINITY

A.each do |a|
  ans += B[a - 1]
  ans += C[before - 1] if a - before == 1
  before = a
end

puts ans
