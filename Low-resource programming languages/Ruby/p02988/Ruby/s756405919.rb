n = gets.to_i
p = gets.split.map(&:to_i)

ans = 0
(0..n-3).each do |i|
  tmp = p.slice(i, 3)
  if tmp[1] == tmp.sort[1]
    ans += 1
  end
end
p ans