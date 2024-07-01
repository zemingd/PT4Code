A, B, C, D, E, F = gets.split.map(&:to_i)
beaker = { concentration: 0, water: 0, sugar: 0 }

def overflow?(water, sugar)
  water + sugar > F
end

def dissolve_all?(water, sugar)
  E * (water / 100) >= sugar
end

def calc_concentration(water, sugar)
  (100 * sugar) / (water + sugar)
end

water = []
(F / A).times do |i|
  (F / B).times do |j|
    next if i == 0 && j == 0
    sum = i * A + j * B
    water << sum if sum < F
  end
end

sugar = []
(F / C + 1).times do |i|
  (F / D + 1).times do |j|
    next if i == 0 && j == 0
    sum = i * C + j * D
    sugar << sum if sum < F
  end
end

water.uniq.sort.each do |w|
  sugar.uniq.sort.each do |s|
    next if overflow?(w, s)
    next unless dissolve_all?(w, s)

    concentration = calc_concentration(w, s)
    next if beaker[:concentration] >= concentration

    beaker = { concentration: concentration, water: w, sugar: s }
  end
end

puts "#{beaker[:water] + beaker[:sugar]} #{beaker[:sugar]}"
