N, K = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
v = v + v
i = 0
ans = 0
l, r = N-K, N-1

while l <= N && r < N+K do
  h = v[l..r].sort
  (K - h.size).times do
    unless h.empty?
      min = h.shift
      if min > 0
        h << min
        break
      end
    end
  end
  tmp = h.inject(&:+) || 0
  ans = tmp if tmp > ans
  if (r - l + 1) < K
    r += 1
  elsif l == r
    l += 1
    r += 1
  else
    l += 1
  end
end

puts ans