# encoding: utf-8
dishs = []
5.times do
  x = gets.chomp.to_i
  dishs << x
end
# p dishs
m = 0
for i in 1..4 do
  if (dishs[i] % 10 > 0) && ((dishs[i] % 10) < (dishs[m] % 10)) then
    m = i
  end
end
dishs[4], dishs[m] = dishs[m], dishs[4]
# p dishs
sum = 0
for i in 0..3 do
  if dishs[i] % 10 == 0 then
    sum = sum + dishs[i]
  else
    sum = sum + (dishs[i] / 10 + 1 ) * 10
  end
end
sum = sum + dishs[4]
puts sum