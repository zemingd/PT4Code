n = gets.to_i
hs = gets.split.map(&:to_i)

max = 0
res = 0
tmp = 0
hs.each do |h|
  if h > tmp
    res = 0
  else
    res += 1
    max = res if res > max
  end
  tmp = h
end

p max