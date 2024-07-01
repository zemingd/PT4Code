r, g, b = gets.split.map(&:to_s)
n = "#{r}#{g}#{b}".to_i
if n % 4 == 0
  puts "YES"
  exit
end
puts "NO"
exit
