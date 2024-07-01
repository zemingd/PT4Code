n = gets.to_i
s = 1
e = 100
array = Array.new(1001,0)

for i in s..e do
  x = i
  for q in s..e do
    y = q
    for r in s..e do
      z = r
      ans = x**2 + y**2 + z**2 + x*y + y*z + z*x
      if ans <= 1000
        array[ans] += 1
      elsif 1000 <ans
        break
      end
    end
  end
end
for i in 1..n do
  puts array[i]
end