houses = Array.new(4) { Array.new(3) { Array.new(10, 0) } }

n = gets.to_i
n.times do
  b, f, r, v = gets.split.map(&:to_i)
  houses[b - 1][f - 1][r - 1] += v
end

houses.each_with_index do |house, i|
  house.each do |floor|
    puts ' ' + floor.join(' ')
  end
  puts '#' * 20 unless i == houses.size - 1
end

