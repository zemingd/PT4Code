N, K = gets.split.map(&:to_i)
ans = 0
(1..N).each do |n|
  i = 0
  while n * (2 ** i) < K do
    i += 1
  end
  ans += (1.0 / N) * (0.5 ** i)  
end
puts ans
