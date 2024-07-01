n, m = gets.chomp.split(" ").map(&:to_i)
cities = []
m.times do
  cities << gets.chomp.split(" ").map(&:to_i)
end
cities.each_with_index do |city, index|
  city.unshift(index)
end

cities.sort! {|a, b| (a[1] <=> b[1]).nonzero? || (a[2] <=> b[2])}

previous = 0
count = 0

cities.each_with_index do |city, index|
  if city[1] != previous
    count = 1
  elsif city[1] == previous
    count += 1
  end
  city << "%#06d" % city[1] + "%#06d" % count
  previous = city[1]
end

cities.sort! {|a, b| a[0] <=> b[0]}

cities.each do |city|
  puts city[3]
end