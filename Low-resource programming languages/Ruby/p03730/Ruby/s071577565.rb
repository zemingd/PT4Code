A, B, C = gets.split.map(&:to_i)
a = A % B

i = 1
judge = "NO"

while i <= B do
if a * i % B == C
  judge = "YES"
  break
end
  i += 1
end

puts judge