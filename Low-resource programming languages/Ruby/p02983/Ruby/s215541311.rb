l,r = gets.split.map(&:to_i)
m=2019

lm = l % m
rm = r % m
cnt=m-1
for i in ([lm,rm].min)..([lm,rm].max)
  for j in i+1..([lm,rm].max)
    cnt = [cnt,(i*j) % m].min
  end
end
puts cnt
