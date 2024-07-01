x,y = gets.strip.split.map(&:to_s)
if x<y
  puts "<"
elsif x>y
  puts ">"
else
  puts "="
end