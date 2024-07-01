n=gets.to_i
a=gets.split.map(&:to_i)
n.times do |i|
  a[i] -= i+1
end
m=1/0.0
a.sort!
v=a[n/2-1]
w=a[n/2]
c = a.each.map {|ai| (ai-v).abs}.inject(:+)
m = c if m > c
c = a.each.map {|ai| (ai-w).abs}.inject(:+)
m = c if m > c
puts m