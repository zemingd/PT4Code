A = gets.split(" ").map(&:to_i)
puts A[0]+A[1]+A[2]>=22 ? 'bust' : 'win'