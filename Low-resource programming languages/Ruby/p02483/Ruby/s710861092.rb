input = gets.split(" ").map(&:to_i)
input.sort! {|a,b| a <=> b}
puts "#{input[0]} #{input[1]} #{input[2]}"