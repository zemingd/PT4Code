n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

even = a.select{ |n| n.even? }
ans = even.select{|n| n % 5 == 0 || n % 3 == 0}
puts ans.length > 0 ? "APPROVED" : "DENIED"
