a,b = gets.split(" ").map(&:to_i)
result = a * b 
puts result.odd? ? "Odd" : "Even"
