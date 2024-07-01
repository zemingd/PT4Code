A,B,C = gets.chomp.split(" ").map(&:to_s)
if A== B && B == C
  p 'Yes'
else
  p 'No'
end