a,b,c,d,e,f = gets.split(" ").map(&:to_i)

water = []
(0..f).each do |i|
  (0..f).each do |j|
    total = (100 * a * i)  + (100 * b * j)
    if total <= f
      water << total
    end
  end
end
water.uniq!

sugar = []
(0..f).each do |i|
  (0..f).each do |j|
    total = c * i + d * j
    if total <= f
      sugar << total
    end
  end
end
sugar.uniq!

max_w = 0
max_s = 0
max_p = 0
water.each do |w|
  sugar.each do |s|
    next if w + s > f
    if w != 0 && (w / 100) * e >= s
      p = (100.0 * s) / (w + s)
      if p > max_p
        max_w = w
        max_s = s
        max_p = p
      end
    end
  end
end

puts "#{max_w+max_s} #{max_s}"