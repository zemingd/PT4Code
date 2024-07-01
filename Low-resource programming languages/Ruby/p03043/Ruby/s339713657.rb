N, K = gets.chomp.split.map(&:to_i)
p = 0.0
(1..N).each do |x|
  if x < K then
    t = Math.log2(K.to_f / x)
    y = t.ceil
    p = p + (1.0 / N) * (0.5) ** y
  else
    p = p + (1.0 / N)
  end
end
puts p