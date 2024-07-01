N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

list = Array.new(N)
current = 0
P.each.with_index do |n, i|
  sum = (1..n).reduce(&:+)
  m = sum / n.to_f
  current = current + m
  list[i] = current
end

ans = 0
N.times do |i|
  break if i + K > N
  ret = list[i + K - 1] - (i == 0 ? 0 : list[i - 1])
  ans = ret if ret > ans
end
puts ans