a,b,c,d = gets.strip.split.map(&:to_i)
if a+b>c+d
  puts "Left"
elsif a+b==c+d
  puts "Balanced"
else
  puts "Right"
end
