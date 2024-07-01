def solve()
  n = gets.to_i
  h = gets.split.map!(&:to_i)
  h = h.reverse!
  ans = 0
  cnt = 0
  (1..n-1).each do |i|
    if (h[i-1] <= h[i])
      cnt += 1
    else
      cnt = 0
    end
    if ans < cnt
      ans = cnt
    end
  end
  print(ans)
end
solve()