def f(x,y,z)
  return x**2 + y**2 + z**2 + x*y + y*z + z*x
end
N = gets.to_i
c = [0] * (N+1)
1.upto(100) do |x|
  1.upto(100) do |y|
    1.upto(100) do |z|
      i = f(x, y, z)
      if i <= N
        c[i] += 1
      end
    end
  end
end
1.upto(N) do |i|
  puts c[i]
end