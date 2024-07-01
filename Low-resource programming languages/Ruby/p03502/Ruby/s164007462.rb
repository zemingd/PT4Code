n = gets.to_i
a = gets.split.map(&:to_i).inject(:+)
puts n % a == 0 ? "Yes": "No"