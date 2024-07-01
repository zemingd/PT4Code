N, M, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)

tt = 0
ia = 0
ib = 0
A.each do |a|
  break if tt + a > K
  tt += a
  ia += 1
end
B.each do |b|
  break if tt + b > K
  tt += b
  ib += 1
end

max_n = ia + ib
while ia >= 0
  ia -= 1
  tt -= A[ia] if A[ia]
  loop do
    break if !B[ib] || tt + B[ib] > K
    tt += B[ib]
    ib += 1
  end
  max_n = ia + ib if max_n < ia + ib
end
puts max_n
