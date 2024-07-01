N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = N.times.map { gets.split.map(&:to_i) } # 2次元配列の入力
total = 0
ans = 0
(0..N - 1).each do |y|
  (0..M - 1).each do |x|
    total += (A[y][x] * B[x])
    total += C if x == M - 1
  end
  ans += 1 if total.positive?
  total = 0
end
puts ans