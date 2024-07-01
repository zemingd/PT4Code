N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)

ans = 0
N.times do
  a = gets.split.map(&:to_i)
  sum = C
  M.times do |i|
    sum += a[i] * B[i]
  end
  if sum > 0
    ans += 1
  end
end

puts ans
