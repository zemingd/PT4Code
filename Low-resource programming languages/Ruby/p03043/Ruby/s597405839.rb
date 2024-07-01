n, k = gets.split.map(&:to_i)
ans = 0.0
1.upto(n) do |i|
  tmp = i
  cnt = 0
  while tmp < k
    tmp *= 2
    cnt += 1
  end
  ans += 0.5 ** cnt
end
puts ans / n