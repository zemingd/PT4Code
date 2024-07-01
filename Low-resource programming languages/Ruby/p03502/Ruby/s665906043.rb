N = gets.to_i
puts(N % N.to_s.chars.map(&:to_i).inject(:+) ? 'Yes' : 'No')