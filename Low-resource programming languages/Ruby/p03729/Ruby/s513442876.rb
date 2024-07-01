A, B, C = gets.split.map(&:to_s)
puts (A[-1] == B[0] and B[-1]==C[0]) ? "YES" : "NO"