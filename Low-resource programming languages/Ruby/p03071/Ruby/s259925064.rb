ab = gets.split.map &:to_i
a, b = ab.sort
b2 = b * 2
if a == b
  puts b2
else
  puts b2 - 1
end
