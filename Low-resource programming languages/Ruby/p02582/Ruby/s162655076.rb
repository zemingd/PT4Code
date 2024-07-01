s = gets.chomp
puts s.scan(/R+/).map(&:length).max.to_i
