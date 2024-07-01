_x, _y, _z, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)
cakes = []
as.each do |a|
  bs.each do |b|
    cs.each do |c|
      cakes << a + b + c
    end
  end
end
cakes = cakes.sort.reverse
(0..k-1).each do |i|
  puts cakes[i]
end
