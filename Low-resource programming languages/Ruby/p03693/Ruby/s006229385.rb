a, b, c = gets.split.map(&:to_i)
if (a*100+b*10+c) % 4 == 0
  puts "YES"
else
  puts "NO"
end