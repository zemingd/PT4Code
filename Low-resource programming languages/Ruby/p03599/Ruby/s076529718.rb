a, b, c, d, e, f = gets.split.map(&:to_i)
max_water = a * 100
max_sugar = 0
max_concentration = 0.0

(0..(f/(a*100))).each do |water_a|
  (0..(f/(b*100))).each do |water_b|
    next if water_a == 0 && water_b == 0
    water = (water_a * a + water_b * b) * 100
    sugar_limit = water / 100 * e
    (0..((f-water)/c)).each do |sugar_c|
      (0..((f-water)/d)).each do |sugar_d|
        sugar = sugar_c * c + sugar_d * d
        next if sugar > sugar_limit || sugar + water > f || sugar == 0 || water == 0
        concentration = sugar.to_f / (sugar+water)
        if concentration > max_concentration
          max_concentration = concentration
          max_water = water
          max_sugar = sugar
        end
      end
    end
  end
end

puts "#{max_water + max_sugar} #{max_sugar}"
