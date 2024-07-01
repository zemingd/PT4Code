a, b, c = 3.times.map { gets.to_i }
if (a*100+b*10+c) % 4 == 0
  puts "YES"
else
  puts "NO"
end