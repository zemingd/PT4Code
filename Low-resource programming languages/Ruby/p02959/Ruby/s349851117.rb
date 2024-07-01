N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
cnt = 0

N.times do |i|
  # 左側を全力
  left = [A[i], B[i]].min
  cnt += left
  A[i] -= left
  B[i] -= left

  # 右側を全力
  right = [A[i + 1], B[i]].min
  cnt += right
  A[i + 1] -= right
  B[i] -= right
end

puts cnt
