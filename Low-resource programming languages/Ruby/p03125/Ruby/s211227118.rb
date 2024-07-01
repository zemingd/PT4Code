a,b,= gets.split.map(&:to_i).sort

if b % a == 0
  puts a + b
else
  puts b - a
end
