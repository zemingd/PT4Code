a, b, c, d, e, f = gets.split.map(&:to_i)

tmp = {}
tmp[:waters] = []
(0..30).each do |i|
  (0..30).each do |j|
    sum = 100 * a * i + 100 * b * j
    tmp[:waters] << sum
  end
end

tmp[:sugars] = []
(0..100).each do |i|
  (0..100).each do |j|
    sum = c * i + d * j
    tmp[:sugars] << sum
  end
end

ret = ""
parcent = 0
tmp[:waters].each do |x|
  tmp[:sugars].each do |y|
    next if x + y == 0 || x < y || x + y > f || x / 100.to_f < y / e.to_f

    tmp[:parcent] = 100 * y.to_f / (x + y).to_f
    if parcent < tmp[:parcent]
      parcent = tmp[:parcent]
      ret = "#{x + y} #{y}"
    end
  end
end
puts ret
