a,b,c,d = gets.chomp.split.map(&:to_i)
x = [a, c].max
y = [b, d].min
if y - x > 0
  puts (y - x)
else
  puts 0
end