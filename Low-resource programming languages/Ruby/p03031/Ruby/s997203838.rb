n, m = gets.split.map(&:to_i)
cond = m.times.map {
  k, *ss = gets.split.map(&:to_i)
  ss.inject(0) {|s, acc| acc | (1 << (s - 1))}
}
ps = gets.split.map(&:to_i)

count = 0
(2 ** n).times do |switches|
  f = cond.map.with_index {|c, i| (switches & c).to_s(2).count("1") % 2 == ps[i]}.all?
  count += 1 if f
end

puts count