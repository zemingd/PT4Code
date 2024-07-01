City = Struct.new(:prefecture, :year, :serial)

n, m = gets.split.map(&:to_i)
cities = []
m.times do
  prefecture, year = gets.split.map(&:to_i)
  cities << City.new(prefecture, year)
end

prefectures = cities.group_by(&:prefecture)
prefectures.keys.each do |pi|
  cities = prefectures[pi]&.sort_by(&:year)
  next if cities.nil?
  cities.map.with_index do |city, idx|
    first = format('%06d', pi)
    last = format('%06d', idx + 1)
    city.serial = first + last
  end
end

# puts prefectures.values.flatten.sort_by { |city| city.serial }.map(&:serial)
puts prefectures.values.flatten.first.serial
