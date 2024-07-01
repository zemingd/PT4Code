num_of_cities, start = gets.split.map(&:to_i)
cities = (gets.split.map(&:to_i) << start).sort

answer = cities[1] - cities[0]

for i in 1 .. num_of_cities - 1

  answer = answer.gcd(cities[i + 1] - cities[i])

end

puts answer
