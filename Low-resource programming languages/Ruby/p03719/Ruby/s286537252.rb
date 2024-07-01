A, B, C = gets.split.map(&:to_i)
puts (A..B).include?(C) ? 'Yes' : 'No'