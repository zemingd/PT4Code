A, V = gets.split.map(&:to_i)
B, W = gets.split.map(&:to_i)
T = gets.to_i
if A > B
  print A+(V*T) > B+(W*T) ? "YES" : "NO"
else
  print A-(V*T) < B-(W*T) ? "YES" : "NO"
end