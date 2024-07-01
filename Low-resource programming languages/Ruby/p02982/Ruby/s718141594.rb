n,d = gets.split.map(&:to_f)
x=[]
for i in 0..n-1
  x[i]=gets.split.map(&:to_f)
end

cnt=0
for i in 0..n-1
  for j in i+1..n-1
    cntd=0
    for k in 0..d-1
      cntd += (x[i][k] - x[j][k])**2
    end
    cntd = cntd**(1/2.0)
    cnt += 1 if (cntd % 1) == 0
  end
end
puts cnt
