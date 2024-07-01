n,m = gets.split.map(&:to_i)
a = gets.split.map &:to_i
a.sort!
d = []
b = a[0]
(1...m).each do |i|
  d << (a[i] -b).abs
  b = a[i]
end
d.sort!.reverse!
(n-1).times do
  d.shift
end
s = d.inject(:+)
if s.nil?
  puts 0
else
  puts s
end