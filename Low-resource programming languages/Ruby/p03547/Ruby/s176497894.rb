x, y = gets.chomp.split(" ").map(&:ord)

if x < y 
  answer = "<"
elsif x > y
  answer = ">"
else
  answer = "="
end

puts answer