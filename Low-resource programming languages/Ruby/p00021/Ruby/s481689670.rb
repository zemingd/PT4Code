n = gets.to_i

n.times do
  arr = []
  slope_list = []

  line = gets.split(' ').map(&:to_f)
  arr << line[0..3]
  arr << line[4..7]

  arr.each do |points|
    x1, y1, x2, y2 = points

    slope_list << (x2 - x1) / (y2 - y1)
  end

  puts slope_list[0] == slope_list[1] ? 'YES' : 'NO'
end