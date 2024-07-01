n, m = gets.split.map(&:to_i)
a = []
tmp = Array.new(n).map{Array.new}
m.times do
  ln = gets.split.map(&:to_i)
  tmp[ln[0]-1] << ln[1]
  a << ln
end
n.times do |i|
  tmp[i].sort!
end
m.times do |i|
  print "%06d" % a[i][0]
  puts "%06d" % (tmp[a[i][0]-1].index(a[i][1])+1)
end
