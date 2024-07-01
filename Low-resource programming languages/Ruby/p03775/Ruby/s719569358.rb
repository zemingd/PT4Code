N = gets.to_i
ans = 10 ** 20
for i in 1..N do
  if i ** 2 > N
    break
  end
  if N % i == 0
    t = [i, N / i].max
    ans = [ans, t].min
  end
end
puts ans.to_s.length