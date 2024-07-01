A, B, C, K = gets.chomp.split.map(&:to_i)

a = 0
b = 0
c = 0
a = K % A if A > 0
b = K % B if B > 0
c = K % C if C > 0
if A <= K then
  a = A
  if A + B <= K then
    b = b
    c = C if A + B + C <= K
  end
end
if a > 0 then
  while K / a > 1 do
    a += K % A
  end
end

if b > 0 then
  while K / (a + b) > 1 do
    b += K % B
  end
end

if c > 0 then
  while K / (a + b + c) > 1 do
    c += K % C
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