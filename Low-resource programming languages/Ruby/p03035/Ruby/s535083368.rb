a, b = gets.chomp.split(" ").map(&:to_i)
 
if a <= 5
  b = 0
elsif a < 13
  b = b * 0.5
end
puts b.to_i