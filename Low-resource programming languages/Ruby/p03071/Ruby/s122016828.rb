A,B = gets.split.map(&:to_i)
f = A+A-1
s = B+B-1
t = A+B

if f >= s && f >= t
  puts f
elsif s >= f && s >= t
  puts s
else
  puts t
end
