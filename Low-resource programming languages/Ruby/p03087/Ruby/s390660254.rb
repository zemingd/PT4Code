num, qnum, = gets.strip.split.map(&:to_i)
str = gets.strip
str << ' '
ary = str.split('AC')
ary[-1] = ary[-1].sub(' ', '')
ary.map!(&:size)

lmap = []
rmap = []
ary.each_with_index do |i, t|
  lmap.push *Array.new(i, 0)
  rmap.push *Array.new(i, 0)
  unless ary.size - 1 == t then
    lmap.push 0, 1
    rmap.push 1, 0
  end
end
llmap = []
total = 0
lmap.each {|i| total += i; llmap << total }
rrmap = []
total = 0
rmap.reverse_each {|i| total += i; rrmap << total }
#p [lmap, rmap]
#p [llmap, rrmap.reverse]

qnum.times do
  ql, qr, = gets.strip.split.map{|i| i.to_i}
  ql -= 1
  qr = num - qr
  #p [ql, qr]
  puts ary.size - 1 - llmap[ql] - rrmap[qr]
end
