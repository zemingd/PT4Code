a, b = gets.chomp.split(' ').map(&:to_i)

if b / a * a == b
  puts a + b
else
  puts b - a
end
