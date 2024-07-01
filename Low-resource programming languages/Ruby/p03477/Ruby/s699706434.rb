a,b,c,d = gets.chomp.split("").map(&:to_i)

if a + b > c + d
  answer = "Left"
elsif a + b < c + d
  answer = "Right"
else
  answer = "Balanced"
end

puts answer