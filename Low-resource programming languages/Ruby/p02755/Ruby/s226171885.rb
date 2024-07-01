A, B = gets.split.map(&:to_i)

A_lowerBound = (A.to_f/0.08).ceil
A_upperLimit = ((A.to_f + 1.0)/0.08).floor

B_lowerBound = (B.to_f/0.1).ceil
B_upperLimit = ((B.to_f + 1.0)/0.1).floor

if A_lowerBound >= B_upperLimit || A_upperLimit <= B_lowerBound then
  p -1
else
  p [A_lowerBound, B_lowerBound].max
end
