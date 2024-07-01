n = gets.to_i
h = Array.new(10 ** 4 + 1, 0)
for x in 1..100 do
  for y in 1..100 do
    for z in 1..100 do
      k = x * x + y * y + z * z + x * y + y * z + z * x
      if k <= 10 ** 4
        h[k] += 1
      end
    end
  end
end
for i in 1..n do
  puts h[i]
end
