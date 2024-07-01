n = gets.to_i
s = Array.new
n.times do |i|
  s[i] = gets.to_i
end
s.sort!
p = s.inject {|sum, a| sum + a }
d = p
if d % 10 != 0
  puts d
else
  f = false
  for c in s do
    d = p - c
    if d % 10 != 0
      f = true
      break
    end
  end
  if f
    puts d
  else
    puts 0
  end
end
