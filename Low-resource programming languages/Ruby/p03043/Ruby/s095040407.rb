N, K = gets.chomp.split.map(&:to_i)
log2 = Math.log2(K).to_i + 1
ans = 0
N.times do |i|
  ans += 1.0 / N * ((1 / 2.0) ** log2)
  log2 -= 1
end
puts ans
