# N = gets.chomp.to_i
A, B, C = gets.chomp.split.map(&:to_i)
# S = gets.chomp.chars

if A == B && B != C
  print "Yes\n"
elsif B == C && C != A
  print "Yes\n"
elsif C == A && A != B
  print "Yes\n"
else
  print "No\n"
end
