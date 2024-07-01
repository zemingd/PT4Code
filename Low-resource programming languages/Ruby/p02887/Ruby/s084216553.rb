gets
colors = gets.chomp.chars
puts colors.drop(1).zip(colors).count{|a, b| a!= b} + 1
