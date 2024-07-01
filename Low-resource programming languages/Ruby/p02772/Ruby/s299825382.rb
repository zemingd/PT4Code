N = gets.to_i
A = gets.split(" ").map(&:to_i).select { |num| num.even?}

ans = A.all?{|num| num%3 == 0 or num%5 == 0 } ? "APPROVED" : "DENIED"
puts ans