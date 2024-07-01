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
  is_better_towers = way.map do |another|
    h[another] < h[number]
  end

  is_better_towers.append(true)

  r += 1 if is_better_towers.uniq == [true]
end

puts r
