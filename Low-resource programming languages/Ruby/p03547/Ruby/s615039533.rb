x, y = gets.chomp.split(" ").map(&:ord)

if x < y 
  answer = "<"
elsif
  answer = ">"
else
  answer = "="
end

puts answer