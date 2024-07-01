# coding: utf-8
pref_num, city_num = gets.chomp.split(' ').map(&:to_i)

City = Struct.new(:number, :pref, :year)
cities = (0...city_num).reduce([]) do |result, i|
  p, y = gets.chomp.split(' ').map(&:to_i)
  result << City.new(i, p, y)
end

city_count = Hash.new(0) # pref. に属する city の個数

ids = cities.sort_by { |city| city.year }.reduce({}) do |hash, city|
  city_count[city.pref] += 1
  hash[city.number] = sprintf("%06d", city.pref) + sprintf("%06d", city_count[city.pref])
  hash
end

ids.sort.each { |_, id| puts id }
