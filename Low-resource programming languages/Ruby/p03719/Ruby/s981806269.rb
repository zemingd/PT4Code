a,b,c = gets.split(" ").map(&:to_i)
result = "No"
result = "Yes" if c >= a and b >= c
puts result