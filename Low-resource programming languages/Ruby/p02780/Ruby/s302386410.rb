N, K = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

S = Array.new(1000 + 1)
sum = 0
(1..1000).each do |n|
  sum += n
  S[n] = sum / n.to_f
end

list = Array.new(N)
current = 0
P.each.with_index do |n, i|
  current = current + S[n]
  list[i] = current
end

ans = 0
N.times do |i|
  break if i + K > N
  ret = list[i + K - 1] - (i == 0 ? 0 : list[i - 1])
  ans = ret if ret > ans
end
puts ans