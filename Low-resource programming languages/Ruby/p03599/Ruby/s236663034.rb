require 'set'

a, b, c, d, e, f = gets.split.map(&:to_i)

water_a = 100*a
water_b = 100*b
suger_a = c
suger_b = d

max_per    = e.to_f / 100
max_amount = f

xs = Set.new
0.step do |xi|
  break if water_a*xi > max_amount
  0.step do |xj|
    break if water_a*xi + water_b*xj > max_amount
    xs.add(water_a*xi + water_b*xj)
  end
end

ys = Set.new
0.step do |yi|
  break if suger_a*yi > max_amount
  0.step do |yj|
    break if suger_a*yi + suger_b*yj > max_amount
    ys.add(suger_a*yi + suger_b*yj)
  end
end

best     = {:all => 0, :suger => 0}
best_per = 0
xs.each do |x|
  ys.each do |y|
    if x > 0 and x+y <= max_amount
      per = y.to_f / x.to_f
      if per <= max_per and per > best_per
        best[:all]   = x+y
        best[:suger] = y
        best_per     = per
      end
    end
  end
end
puts "#{best[:all]} #{best[:suger]}"
