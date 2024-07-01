n = gets.to_i
a = gets.chars.map(&:to_i).inject(:+)
puts n & a == 0 ? "Yes": "No"