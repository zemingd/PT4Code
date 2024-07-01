n = gets.chomp.to_i
h = {}

1.upto(100) do |x|
  x.upto(100) do |y|
    y.upto(100) do |z|
      tmp = x * x + y * y + z * z + x * y + y * z + z * x

      h[tmp] ||= []
      h[tmp] << [x, y, z]
    end
  end
end

def count(arr)
  ret = 0
  arr.each do |(x, y, z)|
    if x == y && y == z
      ret += 1
    elsif x == y || y == z
      ret += 3
    else
      ret += 6
    end
  end
  ret
end

1.upto(n) do |m|
  unless h[m]
    puts 0
    next
  end

  cnt = count(h[m])
  puts cnt
end
