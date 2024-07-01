num = 3.times.map { gets.to_i }
total = gets.to_i
sum = 0
cnt = 0


for i in 0..num[0]
  for j in 0..num[1]
    for k in 0..num[2]
      sum = (500 * i) + (100 * j) + (50 * k)
      if sum == total
        cnt += 1
      end
    end
  end
end
    
puts cnt