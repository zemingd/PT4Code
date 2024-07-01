# https://atcoder.jp/contests/abc128/tasks/abc128_b



N = gets.to_i
points_by_city = Hash.new { |h, key| h[key] = [] }
number_by_point = {}
N.times do |i|
  city, point = gets.chomp.split
  points_by_city[city] << point.to_i
  number_by_point[point] = i + 1
end

points_by_city.keys.sort.each do |city|
  points_by_city[city].sort.reverse.each do |point|
    puts number_by_point[point.to_s]
  end
end
