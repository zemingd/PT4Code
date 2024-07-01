n=gets.to_i
a=gets.split.map(&:to_i)
n.times do |i|
  a[i] -= i+1
end
m=1/0.0
v=a.inject(:+)/n
(v-1000).upto(v+1000) do |k|
  c = a.each.map {|ai| (ai-k).abs}.inject(:+)
  m = c if m > c
end
puts m