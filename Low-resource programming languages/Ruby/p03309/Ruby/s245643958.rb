n=gets.to_i
a=gets.split.map(&:to_i)
n.times do |i|
  a[i] -= i+1
end
m=1/0.0
a.min.upto(a.max) do |k|
  v = a.each.map {|ai| (ai-k).abs}.inject(:+)
  m = v if m > v
end
puts m