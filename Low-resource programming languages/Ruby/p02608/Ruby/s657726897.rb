def resultNumber(n)
  cnt = 0
  for i in 1..n
    for j in 1..n
      for k in 1..n
        if i**2 + j**2 + k**2 + i*j + j*k + k*i == n
          cnt += 1
        end
      end
    end
  end
  p cnt
end

f = gets.to_i
for i in 0..f
  resultNumber(i)
end