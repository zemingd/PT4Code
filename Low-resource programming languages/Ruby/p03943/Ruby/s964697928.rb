a,b,c = gets.split(" ").map(&:to_i).sort
result = "No"
result = "Yes" if (a+b==c)
puts result