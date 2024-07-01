n = gets.to_i
arr = Array.new(n + 1) { 0 }

1.upto(100) do |x|
  x.upto(100) do |y|
    y.upto(100) do |z|
      f = x**2 + y**2 + z**2 + x * y + y * z + z * x
      next if f > n

      if x == y && y == z
        arr[f] += 1
      else
        arr[f] += (x != y && y != z) ? 6 : 3
      end
    end
  end
end

puts arr.drop(1)