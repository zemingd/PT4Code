A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i
print A+(V*T) > B+(W*T) ? "Yes" : "No"