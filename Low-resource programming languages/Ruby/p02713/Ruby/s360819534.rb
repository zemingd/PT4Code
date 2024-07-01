k = 200
gcds = Array.new(k+1).map{Array.new(k+1,0)}

for i in 1..k
  for j in 1..k
    gcds[i][j] = gcds[j][i] = i.gcd(j)
  end
end

sum = 0
for i in 1..k
  for j in i..k
    for k in j..k
      cs = 6
      if i == j
        cs = 3
        if j == k
          cs = 1
        end
      elsif j == k
        cs = 3
      end
      sum += gcds[gcds[i][j]][k] * cs
    end
  end
end
puts sum