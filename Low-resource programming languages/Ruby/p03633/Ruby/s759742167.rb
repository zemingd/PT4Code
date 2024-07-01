n = gets.to_i
t = Array.new
n.times do |i|
  t[i] = gets.to_i
end
t.sort!
s = t[0]
r = 1..(n-1)
r.each do |i|
  s = s.lcm(t[i])
end
puts s