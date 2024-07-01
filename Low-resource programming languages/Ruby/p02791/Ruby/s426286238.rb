n = gets.to_i
p = gets.split.map(&:to_i).first(n)

# 前方から比較しながら一番小さな値を保持しておく
min = (2 * 10**5) + 1
ans = 0

n.times do |i|
  next if p[i] > min
  min = p[i]
  ans += 1
end

puts ans
