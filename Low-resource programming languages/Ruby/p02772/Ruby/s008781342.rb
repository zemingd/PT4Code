gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

puts A.select{|a| a.even?}.all?{|a| a % 3 == 0 || a % 5 == 0} ? 'APPROVED' : 'DENIED'
