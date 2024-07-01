n=gets.chomp.to_i
cities=readlines.map(&:chomp).map(&:to_i)
puts ((n/cities.min)+1)+4