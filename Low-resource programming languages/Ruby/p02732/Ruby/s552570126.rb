N = gets.to_i
A = gets.chomp.split.map(&:to_i)
sum = 0
counts = [0] * (N+1)

A.each {|a| counts[a] ||= 0; counts[a] += 1}
(1..N).each {|i| sum += (counts[i] * (counts[i]-1) / 2)}
(1..N).each {|j| puts sum - (counts[A[j-1]]-1)}