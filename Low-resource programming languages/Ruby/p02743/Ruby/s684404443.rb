a,b,c = gets.split.map(&:to_i)
puts 4*a*b < (c-a-b)**2 && c-a-b > 0 ? "Yes" : "No"