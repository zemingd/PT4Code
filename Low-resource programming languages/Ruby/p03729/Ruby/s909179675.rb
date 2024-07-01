A, B, C = gets.split.map(&:chars)
if A.last == B.first && B.last == C.first
  puts "YES"
else
  puts "NO"
end
