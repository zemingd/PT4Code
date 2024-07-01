n,k = gets.split.map(&:to_i)
hs = n.times.map{gets.to_i}.sort
min = 10 ** 9
(0..n-k).each do |i|
  length = hs[i+k-1] - hs[i]
  min = length if min > length
end
puts min