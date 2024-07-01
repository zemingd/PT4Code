X, Y = gets.split.map(&:chomp)
if X > Y
  puts ">"
elsif X == Y
  puts "="
else
  puts "<"
end
