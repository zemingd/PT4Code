n = gets.to_i
h = gets.split.map(&:to_i)
ans = 0
max = 0
h.each do |v|
  if max <= v
    ans += 1
    max = v
  end
end
p ans
