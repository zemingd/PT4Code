A, B, C = gets.chomp.split

ans = A[-1] == B[0] && B[-1] == C[0]

puts ans ? 'YES' : 'NO'
