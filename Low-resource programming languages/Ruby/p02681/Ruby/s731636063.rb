s = gets.chomp
t = gets.chomp

puts t.match?(/^#{s}.$/) ? 'Yes' : 'No'