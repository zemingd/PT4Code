N, M = gets.split.map(&:to_i)

cities = Hash.new { |h, k| h[k] = [] }
list = []

M.times do
  c, y = gets.split.map(&:to_i)
  list << [c, y]
  cities[c] << y
end

order = Hash.new { |h, k| h[k] = Hash.new }

cities.each do |k, v|
  v.sort!

  v.sort.each.with_index(1) do |y, i|
    order[k][y] = i
  end
end

list.each do |c, y|
  puts "%06d%06d" % [c, order[c][y]]
end

