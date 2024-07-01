N, K = gets.split.map(&:to_i)

min = [N, K-1].min
ans = 0
(1..min).each do |i|
  num = 0
  sum = i
  loop do
    break if sum >= K
    sum *= 2
    num += 1
  end

  t = (1.0/N) * (0.5**num)
  ans += t
end

if N >= K
  ans += (N-K+1).to_f/N
end

p ans
