gets
s = gets.chomp
n = s.split(" ").map(&:to_i)
flag = n.all?{|x| x % 3 == 0 || x % 5 == 0}
puts flag ? "APPROVED" : "DENIED"