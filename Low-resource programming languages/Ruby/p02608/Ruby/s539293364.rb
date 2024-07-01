n = gets.to_i
res = Array.new(n, 0)

1.step(100) do |x|
  x.step(100) do |y|
    y.step(100) do |z|
      t = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
      if t < 1 || t > n
        next
      end
      
      if x == y && y == z
        res[t - 1] += 1
      elsif (x == y && y != z) || (x != y && y == z)
        res[t - 1] += 3
      else
        res[t - 1] += 6
      end
    end
  end
end
puts res