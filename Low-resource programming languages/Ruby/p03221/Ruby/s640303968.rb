City = Struct.new(:prefecture, :year, :serial)

n, m = gets.split.map(&:to_i)
cities = []
m.times do
  prefecture, year = gets.split.map(&:to_i)
  cities << City.new(prefecture, year)
end

prefectures = cities.group_by(&:prefecture)
(1..n).each do |pi|
  cities = prefectures[pi].sort_by(&:year)
  cities.map.with_index do |city, idx|
    first = format('%06d', pi)
    last = format('%06d', idx + 1)
    city.serial = first + last
  end
end

puts prefectures.values.flatten.map(&:serial).sort
