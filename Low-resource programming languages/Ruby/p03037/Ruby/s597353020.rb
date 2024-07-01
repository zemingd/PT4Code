N, M = gets.split.map(&:to_i)
LR = M.times.map { gets.split.map(&:to_i) }
L = 0
R = 1

s_cnt = Array.new(N + 1, 0)
e_cnt = Array.new(N + 1, 0)

LR.each do |lr|
  s_cnt[lr[L]] += 1
  e_cnt[lr[R]] += 1
end

now = 0
ans = 0
1.upto(N) do |i|
  now += s_cnt[i]
  ans += 1 if now >= M
  now -= e_cnt[i]
end

puts ans
