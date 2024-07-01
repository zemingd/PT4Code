n = gets.to_i
hs = gets.split.map(&:to_i)
ans = 1
(1..n-1).each do |i|
  ok = true
  ha = hs[i]
  (0...i).each do |j|
    hb = hs[j]
    if hb > ha
      ok = false
      break
    end
  end
  if ok
    ans += 1
  end
end
puts ans