n = gets.to_i
d = Array.new(n+1, 0)
(1..100).each do |x|
  (1..100).each do |y|
    (1..100).each do |z|
      a = x**2 + y**2 + z**2 + x*y + y*z + z*x
      d[a] += 1 if a <= n
    end
  end
end
(1..n).each do |i|
  puts d[i]
end
