count = Hash.new(0)

1.upto(100) do |x|
  1.upto(100) do |y|
    1.upto(100) do |z|
      count[x * x + y * y + z * z + x * y + y * z + z * x] += 1
    end
  end
end

n = gets.to_i
1.upto(n) do |i|
  puts count[i]
end
