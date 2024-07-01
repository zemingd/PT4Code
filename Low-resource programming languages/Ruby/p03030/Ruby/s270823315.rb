n = gets.chomp.to_i

hash = Hash.new([])
n.times do |i|
  s, point = gets.chomp.split(' ')
  point = point.to_i
  hash[s] = hash[s] + [[(i + 1), point]]
end
hash.to_a.sort_by { |s, arr| s }.each do |s, point_arr|
  point_arr.sort_by { |i, point| -1 * point }.each { |i, point| puts i }
end
