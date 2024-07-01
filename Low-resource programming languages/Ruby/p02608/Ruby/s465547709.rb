n = gets.to_i

res = []
(1..Math.sqrt(n).to_i).each do |x|
  (1..Math.sqrt(n).to_i).each do |y|
    (1..Math.sqrt(n).to_i).each do |z|
      cal = (x**x) + (y**y) + (z**z) + (x * y) + (y * z) + (z * x)
      res << cal
    end
  end
end
n_res = res.select { |r| r <= n }

(1..n).each do |i|
  puts n_res.count(i)
end
