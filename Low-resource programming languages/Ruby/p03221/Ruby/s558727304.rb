n, m = gets.chomp.split.map(&:to_i)
p_y = []
(0..(m - 1)).each do |i|
  p_y << [i] + gets.chomp.split.map(&:to_i)
end

grouped = p_y.group_by { |e| e[1] }.values
grouped = grouped.map do |arr|
  arr.sort_by { |e| e[2] }
end
grouped.each do |arr|
  (0..(arr.length - 1)).each do |i|
    arr[i] += [i + 1]
  end
end

grouped.flatten(1).sort.each do |arr|
  puts "%06d" % arr[1] + "%06d" % arr.last
end