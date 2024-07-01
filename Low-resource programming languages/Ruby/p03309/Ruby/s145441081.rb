n=gets.to_i
a=gets.split.map(&:to_i)
n.times do |i|
  a[i] -= i+1
end

v=a.inject(:+)/n
w=v+1

vv = n.times.map {|i| (a[i]-v).abs}.inject(:+)
ww = n.times.map {|i| (a[i]-w).abs}.inject(:+)
puts [vv,ww].min

