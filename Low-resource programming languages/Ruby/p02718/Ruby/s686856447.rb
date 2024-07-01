N, M = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i).sort.reverse
B = A.inject(&:+)

if A[M-1] * 4 * M >= B
  puts "Yes"
else
  puts "No"
end
