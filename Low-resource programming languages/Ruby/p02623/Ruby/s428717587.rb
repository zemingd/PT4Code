n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

asum = [0]
a.each do |ai|
  asum << asum.last + ai
end
asum << asum.last + k + 1

bsum = [0]
b.each do |bi|
  bsum << bsum.last + bi
end
bsum << bsum.last + k + 1

ans = 0
asum.each_with_index do |av, i|
  break if av > k
  j = bsum.bsearch_index{|x| x + av > k}
  j -= 1
  ans = [i + j, ans].max
end
puts ans
