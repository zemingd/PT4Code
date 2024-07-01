buildings = []
4.times do |i|
  buildings[i] = []
  3.times {|j| buildings[i][j] = [0] * 10 }
end
gets.to_i.times do
  b, f, r, v = gets.split.map(&:to_i)
  current = buildings[b - 1][f - 1][r - 1]
  buildings[b - 1][f - 1][r - 1] = [[0, current + v].max, 9].min
end

buildings.each.with_index do |building, i|
  building.each do |floor|
    print ' '
    puts floor.join(' ')
  end
  puts '#' * 20 unless i == 3
end
