N = gets.to_i
ary = gets.split.map(&:to_i)
dups = ary.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
kazus = {}
dups.map.with_index { |d, i|
  kazus[d] = ary.count(d)
}
max = 0
kazus.map do |key, value|
  max += (value * (value - 1)) / 2
end
ary.map {|m| puts max - (kazus[m] - 1) }