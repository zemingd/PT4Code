N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

total = A.inject(&:+)
# p A
# p B
# p total

0.upto(B.size - 1).each do |i|
  amount = [B[i], A[i]].min
  B[i] -= amount
  A[i] -= amount
  
  # Try A[i+1]
  amount2 = [B[i], A[i+1]].min
  B[i] -= amount2
  A[i+1] -= amount2
end

# For Debug
# p A
# p B

p total - A.inject(&:+)
