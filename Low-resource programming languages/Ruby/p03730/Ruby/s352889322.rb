A, B, C = gets.split.map(&:to_i)

ans = "NO"
1.upto 100 do |i|
  
  ans = "YES" if A*i % B == C
  
end

puts ans
