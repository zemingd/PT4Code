n = gets.to_i
hs = gets.chomp.split.map(&:to_i).reverse
ans = []
cnt = 0
current = hs.shift
hs.each do |h|
  if h >= current
    cnt += 1
  else
    ans << cnt
    cnt = 0
  end
  current = h
end
puts ans.max