n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

asum = [0]
a.each do |ai|
  asum << asum.last + ai
end

bsum = [0]
b.each do |bi|
  bsum << bsum.last + bi
end

ans = 0
asum.each_with_index do |av, ai|
  break if av > k
  bsum.each_with_index do |bv, bi|
    break if av + bv > k
    ans = ai + bi if ans < ai + bi
  end
end
puts ans
