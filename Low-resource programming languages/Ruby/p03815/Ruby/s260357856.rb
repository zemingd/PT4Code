i = gets.to_i
s = i / 11
d = i % 11
s *= 2

if d == 0
elsif d <= 5
  s += 1
else
  s += 2
end

puts s
