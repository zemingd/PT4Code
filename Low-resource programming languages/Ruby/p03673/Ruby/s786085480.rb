n=gets.to_i
a=gets.split.map(&:to_i)
(n/2).times do |i|
  puts a[n-1-2*i]
end
puts a[0] if n.odd?
(n/2).times do |i|
  puts a[i*2+n%2]
end
