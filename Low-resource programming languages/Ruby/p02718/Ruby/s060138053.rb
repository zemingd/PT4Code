N,M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i).sort!.reverse!
sum = 0

(0..N-1).each do |i|
  sum += A[i]
end

if A[M-1] >= sum.to_f / (4 * M)
  puts "Yes"
else
  puts "No"
end