A, B, C, D = gets.chomp.split(" ").map(&:to_i)
if A + B > C + D
  puts "Left"
elsif C + D > A + B
  puts "Right"
else
  puts "Balanced"
end
