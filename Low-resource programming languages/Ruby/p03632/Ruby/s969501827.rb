a,b,c,d = gets.chomp.split.map(&:to_i)
x = [a, c].max
y = [b, d].min
if x - y > 0
  puts (x - y)
else
  puts 0
end
