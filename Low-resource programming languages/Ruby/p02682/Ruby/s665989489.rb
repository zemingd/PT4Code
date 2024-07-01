A, B, C, K = gets.chomp.split.map(&:to_i)

a = 0
b = 0
c = 0

if A <= K then
  a = A
  if A + B <= K then
    b = B
    if A + B + C <= K then
      c = C
    end
  end
end
while (a + b + c) < K do
  if a + 100000 < A && A < K then
    a += 100000
  elsif b + 100000 < B  && B < K then
    b += 100000
  elsif c + 100000 < C  && C < K then
    c += 100000
  end
end 
while (a + b + c) < K do
  if a < A then
    a += 1
  elsif b < B then
    b += 1
  elsif c < C then
    c += 1
  end
end
    
puts a - c