n,m = gets.chomp.split(' ').map(&:to_i)
roads = m.times.map{gets.split(' ').map(&:to_i)}

(1..n).each do |i|
  count = 0
  (0...m).each do |j|
    count += 1 if roads[j][0] == i || roads[j][1] == i
  end
  puts count
end

