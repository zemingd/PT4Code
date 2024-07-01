s, t = gets.chomp
a,b = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp
 
print u == s ? "#{a-1} #{b}" : "#{a} #{b-1}"