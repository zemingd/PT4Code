def input
  gets.chomp.split(' ').map(&:to_i)
end

n, x = input
cities = input
cities << x
cities.sort!
distance = []

for i in 1..n
  distance << cities[i] - cities[i-1]
end

puts distance.inject(:gcd)
