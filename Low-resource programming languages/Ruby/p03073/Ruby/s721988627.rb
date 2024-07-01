s = gets.chomp.split("").map(&:to_i)
l = s.length
a,b = [],[]
(0...l).each do |i|
  a << i % 2
  b << (i+1) % 2
end
each_a,each_b = a.each,b.each
count_a,count_b = 0,0
l.times do
  si = s.shift
  count_a += 1 if si != each_a.next
  count_b += 1 if si != each_b.next
end
puts [count_a,count_b].min
