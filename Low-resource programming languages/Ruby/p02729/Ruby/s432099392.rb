i = gets.chomp.split(" ").map(&:to_i)
puts (i[0]*(i[0]-1)/2) + (i[1]*(i[1]-1)/2)