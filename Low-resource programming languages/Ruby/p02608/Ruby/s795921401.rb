N = gets.chomp.to_i

ans = Array.new(10_050, 0)

n = Math.sqrt(10_050)
(1..n).each do |x|
  (1..n).each do |y|
    (1..n).each do |z|
      v = x**2 + y**2 + z**2 + x * y + y * z + x * z
      ans[v] += 1 if v < 10_050
    end
  end
end

(1..N).each do |i|
  puts ans[i]
end