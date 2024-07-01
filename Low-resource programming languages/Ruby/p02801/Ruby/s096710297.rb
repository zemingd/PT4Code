n,k,m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
 
point_e = a.sum
point_l = n*m - point_e
 
point_l = 0 if point_l < 0
 
m <= (point_l + point_e)/n ? point_l : "-1"