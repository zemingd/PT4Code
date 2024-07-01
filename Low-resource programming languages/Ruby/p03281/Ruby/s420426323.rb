n = gets.to_i
sum = 0;i = 1
while i <= n
  require "prime"
  a = Prime.prime_division(i)
  b = 1
  a.length.times do |j|
    b = b*(a[j][1]+1)
  end
  if b == 8
    sum += 1
  end
  i += 2
end
puts sum
