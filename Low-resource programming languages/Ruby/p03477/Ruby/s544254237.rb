A, B, C, D = gets.chomp.split(" ").map(&:to_i)
if A + B > C + D
  puts "Left"
else if A + B == C + D
  puts "Balanced"
else
  puts "Right"
end