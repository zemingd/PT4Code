a,b,c,x = 4.times.map{gets.to_i}
ans = 0
for i in 0..a
  for j in 0..b
    for k in 0..c
      if 500*i+100*j+50*k == x
        ans += 1
      end
    end
  end
end
puts [ans,511].min