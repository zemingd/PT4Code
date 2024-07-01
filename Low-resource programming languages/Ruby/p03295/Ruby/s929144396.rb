n, m = gets.split.map(&:to_i)
ab = m.times.map { gets.split.map(&:to_i) }

sab = ab.sort_by(&:last)
r = sab[0].last
count = 1
1.upto(m - 1) do |i|
  if sab[i].first >= r
    count += 1
    r = sab[i].last
  end
end
puts count
