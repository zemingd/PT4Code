h, _ = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
puts (h <= a.inject(:+))? "Yes" : "No"