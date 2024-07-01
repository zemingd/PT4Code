N = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
cnt = Hash.new(0)
as.each do |a|
  cnt[a - 1] += 1
  cnt[a] += 1
  cnt[a + 1] += 1
end
ans = 0
cnt.each do |k, v|
  ans = v if v > ans
end
p ans

