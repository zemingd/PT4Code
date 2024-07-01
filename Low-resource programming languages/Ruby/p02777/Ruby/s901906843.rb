s, t = gets.chomp
a,b = gets.chomp.split(" ").map(&:to_i)
u = gets.chomp
 
print u == s ? "#{a--} #{b}" : u == t ? "#{a} #{b--}" : "#{a} #{b}"