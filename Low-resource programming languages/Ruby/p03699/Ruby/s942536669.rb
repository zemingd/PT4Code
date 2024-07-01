n = gets.to_i
a = []
n.times do |i|
  a << gets.to_i
end
a.sort!
s = a.inject(:+)
b = a.reject{|r| r % 10 == 0}
if s % 10 == 0
  if b.empty?
    p 0
  else
    p s - b.shift
  end
else
  puts s
end
