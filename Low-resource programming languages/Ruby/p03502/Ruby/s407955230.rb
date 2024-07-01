N = gets.strip
puts (N.to_i % N.chars.map(&:to_i).inject(:+)).zero? ? 'Yes' : 'No'
