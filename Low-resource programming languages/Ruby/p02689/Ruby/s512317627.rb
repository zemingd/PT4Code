n, m = readline.split(' ').map(&:to_i)
h = readline.split(' ').map(&:to_i)
roads = (0..(n - 1)).to_h { |i| [i, []] }

m.times do
  a, b =  readline.split(' ').map(&:to_i)
  roads[a - 1].append(b - 1)
  roads[b - 1].append(a - 1)
end

r = 0

roads.each do |number, way|
  is_better_towers = [true]
  is_better_towers = way.map do |other_high|
    other_high < h[number]
  end

  r += 1 if is_better_towers.uniq == [true]
end

puts r
