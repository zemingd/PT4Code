N, K = gets.chomp.split.map(&:to_i)
ans = 0
while 0 < N # N の値になるまで繰り返しans を +1 する
  N = N / K
  ans += 1
end

puts ans
