n, k = gets.chomp.split.map(&:to_i)
a = []
n.times do
  a << gets.to_i
end
a.sort!
r = []
(0..(a.count - k)).each_with_index do |i|
  r << a[i + k - 1] - a[i]
end
puts r.min