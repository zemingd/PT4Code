n = gets.to_i
a = gets.split(" ").map(&:to_i)
puts a.all?{|x| 
 !(x % 2 == 0) or (x % 3 == 0 or x % 5 == 0)
} ? "APPROVED" : "DENIED"
