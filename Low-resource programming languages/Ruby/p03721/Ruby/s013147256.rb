N, K = gets.split(" ").map(&:to_i)

ARR = []
while c = gets&.split(" ")&.map(&:to_i)
  ARR.concat(Array.new(c[1], c[0]))
end
puts ARR.sort[K-1]