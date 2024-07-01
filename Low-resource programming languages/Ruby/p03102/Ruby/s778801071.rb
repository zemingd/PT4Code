N,M,C = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0

N.times do
  a = gets.split.map(&:to_i)
  sum = C
  for i in 0..M-1 do
    sum += a[i]*b[i]
  end

  ans += 1 if sum >0
end

puts ans
