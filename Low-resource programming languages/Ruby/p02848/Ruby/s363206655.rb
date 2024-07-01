alpha = [*"A".."Z"]
slide = gets.to_i
str = gets.chomp.chars
puts str.map { |s| alpha[(alpha.index(s) + slide) % 26] }.join
