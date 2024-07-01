n = gets.to_i
ans = Array.new(n,0)
for i in 1..100
  for j in 1..100
    for k in 1..100
      x = i**2 + j**2 + k**2 + i*j + j*k + k*i
      if x >= 1 && x <= n
        ans[x] += 1
      end
    end
  end
end
puts ans