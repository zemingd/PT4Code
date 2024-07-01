A, B, C, K = gets.chomp.split.map(&:to_i)

a = 0
b = 0
c = 0

if A <= K then
  a = A
  if A + B <= K then
    b = b
    c = C if A + B + C <= K
  end
end

while (a + b + c) < K do
  if a < A then
    a += a
  elsif b < B then
    b += 1
  elsif c < C then
    c += 1
  end
end
    
puts a - c