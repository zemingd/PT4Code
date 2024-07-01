A, B, C, D = gets.split.map(&:to_i)
L = A + B
R = C + D
case
when L > R
  puts "Left"
when L == R
  puts "Balanced"
else
  puts "Right"
end
