n = gets.to_i
u = Array.new(n + 1, 0)
1.upto(n) do |x|
  a = x * x
  next if a > n
  1.upto(n) do |y|
    b = a + y * y + x * y
    next if b > n
    1.upto(n) do |z|
      next if b + z * z + x * z + y * z > n
      u[b + z * z + x * z + y * z] += 1 if b + z * z + x * z + y * z <= n
    end
  end
end
1.upto(n) do |i|
  puts u[i]
end