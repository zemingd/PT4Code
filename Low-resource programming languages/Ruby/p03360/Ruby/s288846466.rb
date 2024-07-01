arr = gets.split(" ").map(&:to_i).sort
k = gets.to_i

puts arr[0]+arr[1]+arr[2]*2**k