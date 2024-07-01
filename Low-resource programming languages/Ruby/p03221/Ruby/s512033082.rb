# https://atcoder.jp/contests/abc113/tasks/abc113_c

n, m = gets.split.map(&:to_i)

prefs = Array.new(10**5).map { Array.new }
City = Struct.new("City", :pref, :year, :index)
cities = []
m.times do
  pref, year = gets.split.map(&:to_i)
  city = City.new(pref, year, nil)
  prefs[pref] << city
  cities << city
end

prefs.reject(&:nil?).each do |pref|
  sorted_pref_cities = pref.sort_by { |c| c.year }
  sorted_pref_cities.each_with_index { |c, idx| c.index = idx + 1 }
end
cities.each { |i| printf "%06d%06d\n", i.pref, i.index }
# p prefs