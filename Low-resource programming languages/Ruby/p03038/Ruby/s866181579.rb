n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
op = []
m.times do |i|
  d = gets.chomp.split.map(&:to_i)
  op += Array.new(d[0],d[1])
end
size=a.count
ar=(op+a).sort.reverse
sumi = ar[0..size-1].inject(:+)
puts sumi
