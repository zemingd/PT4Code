s = gets.chomp
ret = ['a', 'b', 'c'].all? { |char| s.each_char.to_a.include?(char) }
puts ret ? 'Yes' : 'No'
