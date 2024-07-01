a, b, c = gets.chomp!.split(" ").map!(&:to_i)

puts b > c * a ? c : b / a 
