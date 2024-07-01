N = gets.to_i
A = gets.to_i
B = 20
ans = 0
(A+1).times do |a|
 (B+1).times do |b|
  m = a+(b*500);
  ans = ans+1 if m == N
  break if m > N
 end
end

puts ans > 0 ? "Yes":"No"