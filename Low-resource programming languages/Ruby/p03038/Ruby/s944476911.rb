N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bcs = []
M.times do |i|
  bcs << gets.split.map(&:to_i)
end
bcs.sort! { |(b1,c1),(b2,c2)| c2<=>c1}
n = N
bcs2 = []
bcs.each do |bc|
  t = [bc[0], n].min
  n -= t
  bcs2 << [bc[1]] * t
  break if n == 0
end
bcs2.flatten!
puts (as + bcs2).sort.reverse[0..N-1].inject(:+)
