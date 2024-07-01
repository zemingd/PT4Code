n, m =gets.chomp.split.map(&:to_i)
od = []
ev = []
n.times do |i|
  od.push(i)
end
m.times do |i|
  ev.push(i)
end
ans = 0

ans += od.combination(2).count
ans += ev.combination(2).count

puts "#{ans}"
