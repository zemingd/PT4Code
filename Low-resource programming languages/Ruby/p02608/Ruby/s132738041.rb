def resultNumber(n)
  cnt = 0
  for i in 1..10
    for j in 1..10
      for k in 1..10
        if i**2 + j**2 + k**2 + i*j + j*k + k*i == n
          cnt += 1
        end
      end
    end
  end
  p cnt
end

f = gets.to_i
for i in 1..f
  resultNumber(i)
end