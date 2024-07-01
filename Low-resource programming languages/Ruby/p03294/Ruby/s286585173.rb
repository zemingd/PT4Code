a=gets.to_i
line=gets.chomp.split.map(&:to_i)
puts line.inject(:+)-a