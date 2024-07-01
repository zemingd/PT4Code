a,b,c,d = gets.chomp.split(" ").map(&:to_i)

lower = [a,c].max
upper = [b,d].min

if upper > lower
  puts upper
else
  puts 0
end
