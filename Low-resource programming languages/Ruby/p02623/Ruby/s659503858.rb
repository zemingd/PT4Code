n, m, k = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
amax = -1
asum = 0
a.each_with_index do |e,i|
  if asum + e <= k
    asum += e
  else
    amax = i
    break
  end
end
amax = n if amax < 0

ans = amax
bidx = 0
flag = false
amax.downto(0) do  |i|
  if i != amax
    asum -= a[i]
    amax -= 1
  end
  while asum + b[bidx] <= k
    asum += b[bidx]
    amax += 1
    ans = amax if amax > ans
    bidx += 1
    if bidx >= m
      flag = true
      break
    end
  end
  if flag then break end
end
p ans
