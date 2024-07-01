A, B, C, D, E, F = gets.split.map(&:to_i)

x = []
(F / A).times do |i|
  (F / B).times do |j|
    sum = i * A * 100 + j * B * 100
    next if sum > F
    x << sum
  end
end

y = []
(F / C).times do |i|
  (F / D).times do |j|
    sum = i * C + j * D
    next if sum > F
    y << sum
  end
end

x = x.uniq.sort
y = y.uniq.sort

beaker = { noudo: 0, water: 0, sugar: 0 }
x.each do |water|
  y.each do |sugar|
    next if water + sugar > F
    next if (water / 100.to_f) * E < sugar

    noudo = sugar / (water + sugar).to_f
    next if beaker[:noudo] >= noudo

    beaker = { noudo: noudo, water: water, sugar: sugar }
  end
end

puts "#{beaker[:water] + beaker[:sugar]} #{beaker[:sugar]}"
