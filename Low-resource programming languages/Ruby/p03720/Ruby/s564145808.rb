N, M = gets.split(" ").map(&:to_i)

ROAD = Array.new(N, 0)
while c = gets&.split(" ")&.map(&:to_i)
  ROAD[c[0]-1] += 1
  ROAD[c[1]-1] += 1
end

puts ROAD