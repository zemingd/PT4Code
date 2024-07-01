k = gets.chomp.split(?\s).last.to_i
puts gets.chomp.split(?\s).map(&:to_i).sort_by { |i| -i }.take(k).reduce(:+)