N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
ans = 0
N.times do
  a = gets.split.map(&:to_i)
  num = 0
  M.times do |i|
    num += B[i] * a[i]
  end
  ans += 1 if num + C > 0
end
puts ans