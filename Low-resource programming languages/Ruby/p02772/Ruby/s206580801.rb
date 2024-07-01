n = gets.chomp.to_i

array = []
n.times do
  int = gets.chomp.to_i
  array << int
end

even = array.select{ |n| n.even? }
ans = even.select{|n| n % 5 == 0 || n % 3 == 0}
puts ans.length > 0 ? "APPROVED" : "DENIED"
