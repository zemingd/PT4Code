N,M = gets.split(" ").map(&:to_i);
L = Array.new(M, 0)
R = Array.new(M, 0)
L[0],R[0] = gets.split(" ").map(&:to_i);
Y = [*L[0]..R[0]]
for i in 1..M-1
	L[i],R[i] = gets.split(" ").map(&:to_i);
	X = [*L[i]..R[i]] & [*L[i-1]..R[i-1]]
end
puts X.length	