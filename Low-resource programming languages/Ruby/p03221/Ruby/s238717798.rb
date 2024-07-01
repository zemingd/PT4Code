n, m = gets.split.map(&:to_i)
prefectures = Array.new(n) {[]}
m.times do |i|
  p, y = gets.split.map(&:to_i)
  prefectures[p - 1] << [y, i]
end

puts prefectures.flat_map.with_index(1) {|v, p|
  v.sort.map.with_index(1) {|(y, i), j| [i, sprintf("%06d%06d", p, j)]}
}.sort.map(&:last)