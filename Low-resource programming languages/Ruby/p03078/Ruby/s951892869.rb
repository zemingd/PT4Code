_x, _y, _z, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)
combi = []
as.each do |a|
  bs.each do |b|
    combi << a + b
  end
end
trio = []
combi.sort!.reverse!
combi[0...k].each do |ab|
  cs.each do |c|
    trio << ab+c
  end
end
trio.sort!.reverse!
trio[0...k].each do |sum|
  puts sum
end
