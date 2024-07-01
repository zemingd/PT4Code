N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

s = A.inject(:+)
puts A.select{|a| a >= s.to_f/(4*M)}.count >= M ? 'Yes' : 'No'
