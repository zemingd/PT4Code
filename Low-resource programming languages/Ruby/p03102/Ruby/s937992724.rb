N, M, C = gets.split.map &:to_i
B = gets.split.map &:to_i
A = N.times.map { gets.split.map &:to_i }

correct = 0
N.times do |n|
  sum = 0
  M.times do |m|
    sum += A[n][m] * B[m]
  end
  sum += C
  correct += 1 if sum > 0
end
puts correct