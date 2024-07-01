n=gets.to_i
a=gets.split.map(&:to_i)
n.times do |i|
  a[i] -= i+1
end
a.sort!
v=a.inject(:+)/n
puts n.times.map {|i| (a[i]-v).abs}.inject(:+)
