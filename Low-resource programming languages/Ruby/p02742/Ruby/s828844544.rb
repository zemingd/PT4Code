h,w = gets.chomp.split(" ").map(&:to_i)

puts h*w/2 + ((h*w)%2)