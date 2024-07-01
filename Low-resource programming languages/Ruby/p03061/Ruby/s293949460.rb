N = gets.to_i
A = gets.chomp.split.map(&:to_i)

real = A[0]
A.each do |a|
  real = real.gcd(a)
end

if A[0].gcd(A[1]) == real and A[0].gcd(A[-1]) == real
  ans = A[1]
  (2...N).each do |i|
    ans = ans.gcd(A[i])
  end
  puts ans
else
  ans = A[0]
  bigger = false
  (1...N).each do |i|
    if ans.gcd(A[i]) > real
      ans = ans.gcd(A[i])
      bigger = true
    end
  end
  puts bigger ? ans : real
end