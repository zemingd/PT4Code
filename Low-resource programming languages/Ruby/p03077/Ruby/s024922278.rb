
line = gets
line.chomp!
n = line.to_i

city=[]
for cnt in 1..5 do
  line = gets
  line.chomp!
  city.push(line.to_i)
end

cnt=[]

cnt.push(n/city[0])
if n%city[0] > 0
  cnt[0] += 1
end

min=city[0]
for i in 1..4 do
  if (city[i] < min)
    min = city[i]
  end
  if city[i-1] <= city[i]
    cnt.push(cnt[i-1]+1)
  else
    cnt.push(n/min)
    if (n%min > 0)
      cnt[i] += 1
    end
    print(city[i]," ",cnt[i],"\n")
    cnt[i] += i
  end
end

print cnt[4]
