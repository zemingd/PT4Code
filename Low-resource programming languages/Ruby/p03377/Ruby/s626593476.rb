a,b,x = gets.chomp.split.map(&:to_i)

if x >= a && x <= b
  puts "YES"
else
  puts "NO"
end