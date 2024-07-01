n,m,c = gets.chomp.split.map(&:to_i)
bs = gets.chomp.split.map(&:to_i)
as = n.times.map{gets.chomp.split.map(&:to_i)}
count = 0
as.each do |a|
  sum = c
  (0..m-1).each do |i|
    sum += a[i]*bs[i]
  end
  count += 1 if sum > 0
end
puts count
