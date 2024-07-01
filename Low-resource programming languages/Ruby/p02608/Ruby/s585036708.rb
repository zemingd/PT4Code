N = gets.to_i
arr = Array.new(N, 0)

max = Math.sqrt(N).to_i
x, y, z = 1, 1, 1
while z < max do
  n = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
  if x == y && y == z # 3つとも同じ
    count = 1
  elsif x != y && y != z && z != x # 3つとも異なる
    count = 6
  else
    count = 3
  end
  
  arr[n - 1] += count if n <= N

  # 進める
  x += 1
  if x > max
    y += 1
    x = y
  end
  if y > max
    z += 1
    y, x = z, z
  end
end

puts arr
