N = gets.to_i
A = Array.new(5).map{|x| gets.to_i}
d = A.min

ans = 5 + ((N-1) / d)
p ans

