a, b, c, x = 4.times.map { gets.to_i}
count = 0

(0..a).each do |d|
  (0..b).each do |e|
    (0..c).each do |f|
      count += 1 if d * 500 + e * 100 + f * 50 == x
    end
  end
end

p count
