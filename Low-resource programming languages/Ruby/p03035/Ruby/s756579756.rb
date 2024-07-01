a, b = gets.split.map(&:to_i)

puts case a
when 13..100
  b
when 6..12
  b / 2
else
  0
end