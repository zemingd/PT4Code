d, g = gets.split.map(&:to_i)

list = d.times.map{gets}.map.with_index(1) do |i, ind|
  p, c = i.split.map(&:to_i)
  [[0, p], ->(n) { n == p ? 100 * ind * n + c : 100 * ind * n }]
end

res = list.flat_map do |i|
  [*Range.new(*i.first)].product(*(list - [i]).map(&:first)).map do |j|
    [j.inject(:+), [i.last, *(list - [i]).map(&:last)].zip(j).map { |k, l| k.call(l) }.inject(:+)]
  end
end

p res.select{|_,i| i >= g}.map(&:first).min