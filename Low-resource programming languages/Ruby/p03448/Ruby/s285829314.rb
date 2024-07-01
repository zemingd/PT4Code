a,b,c,x = 4.times.map{gets.to_i}
count = 0
for i in 0..a
  for j in 0..b
    for k in 0..c
      if 500*i + 100*j + 50*k == x
        count += 1
      end
    end
  end
end
puts count