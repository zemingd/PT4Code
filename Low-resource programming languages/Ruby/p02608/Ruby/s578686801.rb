n = gets.to_i

h = {}
1.upto(100) do |x|
  1.upto(100) do |y|
    1.upto(100) do |z|
      a = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
      h[a] ||= 0
      h[a] += 1
    end
  end
end

1.upto(n) do |a|
  puts h[a] || 0
end