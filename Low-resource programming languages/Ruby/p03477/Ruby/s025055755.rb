A,B,C,D = gets.split.map(&:to_i)
if A+B > C+D
 puts("Left")
 elsif A+B == C+D
 puts("Balanced")
 else puts("Right")
end