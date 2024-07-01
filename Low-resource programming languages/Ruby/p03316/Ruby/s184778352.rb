s = gets.rstrip
p s.to_i % s.chars.map(&:to_i).reduce(:+) == 0 ? 'Yes' : 'No'