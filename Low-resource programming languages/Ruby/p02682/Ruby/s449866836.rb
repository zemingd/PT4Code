A, B, C, k = gets.split.map(&:to_i)
ans = [[A, 1], [B, 0], [C, -1]].inject(0) do |r, (n, p)|
  if k > 0
    t = [n, k].min
    k -= t
    r += t * p
  end
  r
end
puts ans