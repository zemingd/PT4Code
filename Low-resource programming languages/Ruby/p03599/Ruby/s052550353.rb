a, b, c, d, e, f = STDIN.gets.split.map(&:to_i)

max_water = 0
max_sugar = 0
max_concentrate = 0.0
(0..(f / (a * 100))).each do |wcount1|
  (0..(f / (b * 100))).each do |wcount2|
    next if wcount1 == 0 && wcount2 == 0
    water = wcount1 * a * 100 + wcount2 * b * 100
    sugar_limit = (wcount1 * a + wcount2 * b) * e
    (0..((f - water) / c)).each do |scount1|
      (0..((f - water - c * scount1) / d)).each do |scount2|
        sugar = scount1 * c + scount2 * d
        next if sugar > sugar_limit
        next if sugar + water > f
        next if sugar == 0 || water == 0
        concentrate = sugar.to_f / (sugar + water)
        if concentrate > max_concentrate
          max_concentrate = concentrate
          max_water = water
          max_sugar = sugar
        end
      end
    end
  end
end

if max_water == 0 && max_sugar == 0
  max_water = a * 100
end

puts "#{max_sugar + max_water} #{max_sugar}"
