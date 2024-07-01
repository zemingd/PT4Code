A, B, C = gets.chomp.split.map(&:to_i)
puts A <= C && C <= B ? 'Yes' : 'No'