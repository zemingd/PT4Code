a,b,c,d=gets.chomp.split(" ").map { |e| e.to_i }

if a+b == c+d
  puts "balanced"
elsif a+b < c+d
  puts "Right"
else
  puts "Left"
end
