n = gets.to_i
h = gets.split.map(&:to_i)
i = 0
res = {}
while i < n
  j = i
  s = 0
  while j < n - 1
    if h[j] >= h[j + 1]
      s += 1
      res[[h[i], i]] = s
      j += 1
    else
      break
    end
  end
  i += 1
end

puts !res.empty? ? res.max_by{|(k,v)| v}[1] : 0