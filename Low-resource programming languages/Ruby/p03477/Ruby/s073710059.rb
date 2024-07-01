A, B, C, D = gets.split(" ").map(&:to_i)

case (A + B) <=> (C + D)
  when 1 then puts "Left"
  when 0  then puts "Balanced"
  when -1  then  puts "Right"
end