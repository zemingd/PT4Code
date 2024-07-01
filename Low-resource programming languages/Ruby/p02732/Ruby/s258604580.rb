N = gets.to_i
ary = gets.split.map(&:to_i)
dups = ary.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
kazus = []
dups.map.with_index { |d, i|
  kazus.push(ary.count(d))
}
max = 0
kazus.map do |k|
  max += (k * (k - 1)) / 2
end
ary.map do |m|
  puts max - (ary.count(m) - 1)
end