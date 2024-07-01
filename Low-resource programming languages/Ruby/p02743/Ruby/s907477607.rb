a, b, c = gets.chomp.split(" ").map(&:to_i)
puts 4*a*b < (c-a-b)**2 ? "Yes" : "No"