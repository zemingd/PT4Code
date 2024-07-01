str = gets.champ
puts str.scan(/R+/).map(&:size).max.to_i
