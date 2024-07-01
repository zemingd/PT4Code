s = gets
puts (s.to_i % s.chars.map(&:to_i).inject(:+)).zero? ? :Yes : :No