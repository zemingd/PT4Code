C1 = gets.chomp
C2 = gets.chomp
 
puts (C1 == C2.reverse && C2 == C1.reverse) ? 'YES' : 'NO'