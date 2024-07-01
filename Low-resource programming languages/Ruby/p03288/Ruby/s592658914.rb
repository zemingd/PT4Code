d, g = gets.split.map(&:to_i)

list = d.times.map{gets}.map.with_index(1) do |i, ind|
  p, c = i.split.map(&:to_i)
  [[0, p], ->(n) { n == p ? 100 * ind * n + c : 100 * ind * n }]
end

res = list.flat_map do |i|
  [*i.first[0]...i.first[1]].product(*(list - [i]).map(&:first)).map do |j|
    break j.inject(:+) if [i.last, *(list - [i]).map(&:last)].zip(j).map { |k, l| k.call(l) }.inject(:+) >= g
    []
  end
end

p res.min || list.firts.flatten.inject(:+)