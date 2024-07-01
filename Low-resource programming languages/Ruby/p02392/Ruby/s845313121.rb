a, b, c = gets.split(" ").map(&:to_i)
answer = "No"
answer = "Yes" if a < b && b < c
puts answer 
