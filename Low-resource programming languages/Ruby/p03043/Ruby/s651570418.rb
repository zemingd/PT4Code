N, K = gets.split.map(&:to_i)

ans = 0
(1..N).each do |n|
  i = 0
  while n < K
    n *= 2
    i += 1
  end
  ans += (1.to_f/N) * (1.to_f/2) ** i
end
p ans