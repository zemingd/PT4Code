N = gets.to_i

a = Array.new(N + 1, 0)
[*1 ... Math.sqrt(N)].repeated_permutation(3) do |x, y, z|
  v = x**2 + y**2 + z**2 + x*y + y*z + z*x
  a[v] += 1 if v <= N
end
puts a[1 .. N]