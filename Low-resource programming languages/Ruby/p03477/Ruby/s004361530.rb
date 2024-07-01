a,b,c,d=gets.split.map(&:to_i)
case (a+b <=> c+d) <=> 0
when 0
  puts "Balanced"
when 1
  puts "Left"
else
  puts "Right"
end