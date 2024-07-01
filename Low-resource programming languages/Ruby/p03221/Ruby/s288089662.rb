n, m = gets.chomp.split.map(&:to_i)
pref = Array.new(n) { Array.new }
city = Array.new(m)
m.times do |i|
  p, y = gets.chomp.split.map(&:to_i)
  pref[p - 1] << [i, y]
end

n.times do |i|
  cities = pref[i]  
  cities.sort_by! {|_, y| y }
  (cities.size).times do |j|
    c, y = cities[j]
    city[c] = [i + 1, j + 1]
  end
end

city.each do |i, j|
  puts "%06d%06d" % [i, j]
end