n = gets.to_i
a = []
n.times do |i|
  a << gets.to_i
end
a.sort!
s = a.inject(:+)
while s % 10 == 0
  s -= a.shift
  break if a.empty?
end
puts s
