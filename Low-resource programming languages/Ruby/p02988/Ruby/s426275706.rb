n = gets.to_i
points = gets.split(" ").map(&:to_i)
print (1..(n-2)).count{ |i| points[i] == points[(i-1)..(i+1)].sort[1] }