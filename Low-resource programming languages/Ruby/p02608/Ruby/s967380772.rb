n = gets.to_i
ans = Array.new(10050, 0)

for i in 1..105
  for j in 1..105
    for k in 1..105
      num = (i * i) + (j * j) + (k * k) + (i * j) + (j * k) + (k * i)
      if num < 10050
        ans[num] += 1
      end
    end
  end
end

for i in 1..n
  puts ans[i]
end