N, M, C = gets.split(" ").map(&:to_i)
B = gets.split(" ").map(&:to_i)
A = Array.new(N)

correct_num = 0
sum = 0

N.times do |n|
  A[n] = gets.split(" ").map(&:to_i)
  M.times do |m|
    sum += A[n][m] * B[m]
  end
  if sum + C > 0
    correct_num += 1
  end
  sum = 0
end

puts correct_num
