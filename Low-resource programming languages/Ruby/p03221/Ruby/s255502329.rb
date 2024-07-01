n, m, = gets.split.map(&:to_i)
ary = Array.new(n){[]}
ARGF.readlines.each_with_index do |line, t|
  ki, year, = line.split.map(&:to_i)
  ary[ki - 1] << [year, t]
end
res = []
ary.each_with_index do |ken, ki|
  ken.sort.each_with_index{|i, si| res << [i[1], sprintf('%06d%06d', ki+1, si+1)] }
end
puts res.sort.map(&:last)
