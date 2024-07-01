N = gets.to_i
A = gets.chomp.split.map(&:to_i)
ans = A[0]

(1..N-1).each do |i|
  ans *= A[i]
  break if ans > 10**18
end

if ans > 10**18
  puts -1
else
  puts ans
end
 
