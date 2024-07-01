a, b, x = gets.chop.split.map(&:to_i)

if a > x
  puts "NO"
else
  if x - a > b
    puts "NO"
  else
    puts "YES"
  end
end
