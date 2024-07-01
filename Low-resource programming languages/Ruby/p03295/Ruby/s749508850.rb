n,m = gets.chomp.split(" ").map(&:to_i)
a,b = m.times.map{gets.split.map(&:to_i)}.transpose
range = []
m.times do |i|
  range << [a[i],b[i]]
end
range = range.sort_by{|x| x[1]}
cnt = 0
while !range.empty?
  v = range[0]
  range.delete_if{|x| x[0] < v[1]}
  cnt += 1
end
puts cnt