N, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x.push(X).sort!

di = Array.new(N)
for i in 0..(N-1)
  di[i] = x[i+1] - x[i]
end

gcd = di[0]
for i in 1..(N-1)
  div = [gcd, di[i]].min
  while div > 0
    if gcd % div == 0 && di[i] % div == 0
      break
    end
    div -= 1
  end
  gcd = div
end
puts gcd