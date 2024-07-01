a, b, c = gets.split.map(&:to_i)
if b % a == 0
  puts c
else
  puts b / a
end