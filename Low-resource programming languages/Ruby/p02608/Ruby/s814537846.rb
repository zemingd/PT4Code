N = gets.to_i

sum = Array.new(10010, 0)

1.upto(105) do |x|
  1.upto(105) do |y|
    1.upto(105) do |z|
      n = (x * x) + (y * y) + (z * z) + (x * y) + (y * z) + (z * x)
      sum[n] += 1 if n < 10010
    end
  end
end

N.times do |i|
  puts sum[i+1]
end
