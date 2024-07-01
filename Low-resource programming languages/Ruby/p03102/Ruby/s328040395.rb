N, M, C = gets.split.map(&:to_i)
B = Array.new(gets.split.map(&:to_i))
ans = 0
N.times do
  A = Array.new(gets.split.map(&:to_i))
  result = 0
  M.times do |i|
    result += A[i] * B[i]
  end
  ans += 1 if result + C > 0
end
puts ans
