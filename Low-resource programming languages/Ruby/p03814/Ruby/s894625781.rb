s = gets.chomp
x = 0
a = -1
z = -1
s.each_char do |c|
  if c == "A" and a == -1
    a = x
  elsif c == "Z"
    z = x
  end
  x += 1
end
puts ((z-a+1) > 0)? z-a+1: 0