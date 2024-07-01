# https://atcoder.jp/contests/abc065/tasks/abc065_b


N = gets.to_i
as = Array.new(N) { gets.to_i }

k = 0
ans = 0

loop do
  k = as[k] - 1
  ans += 1
  if k == 0
    ans = -1
    break
  elsif k == 1
    break
  end
end

puts ans
