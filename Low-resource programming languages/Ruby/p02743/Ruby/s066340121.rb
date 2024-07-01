a, b, c = gets.chomp.split.map(&:to_i)
puts (c-a-b > 0 && 4*a*b < (c-a-b)**2) ? "Yes" : "No"