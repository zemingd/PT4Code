X, Y = gets.split.map(&:ord)

if X < Y
  puts "<"
elsif X > Y
  puts ">"
else
  puts "="
end