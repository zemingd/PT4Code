a,b,c = gets.split.map(&:to_i)
puts 4*a*b < (c-a-b)*(c-a-b) ? "Yes" : "No"