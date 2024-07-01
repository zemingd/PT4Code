n,m = gets.chomp.split(' ').map(&:to_i)
cities = Array.new(n,0)
m.times do
  a,b = gets.chomp.split(' ').map(&:to_i)
  cities[a-1] += 1
  cities[b-1] += 1
end
puts cities