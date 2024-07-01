n = gets.chop
s = n.chars.map(&:to_i).inject(:+)
puts n.to_i % s == 0 ? "Yes" : "No"