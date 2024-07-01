N = gets.to_i

num = []
for i in 1..N do
  num[i-1] = 0
end

for x in 1..100 do
  for y in 1..100 do
    for z in 1..100 do
      n = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
      if n <= N then
        num[n-1] += 1
      end
    end
  end
end
  
puts num