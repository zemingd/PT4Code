n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
min = p[0]
ans = 1
1.upto(n-1) do |i|
  if min >= p[i]
    ans += 1
  end
  min = [min, p[i]].min
end
p ans
