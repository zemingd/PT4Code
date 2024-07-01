i ,glam =gets.split(" ").map(&:to_i)
cake = i.times.map { gets.to_i }
puts i + (glam-cake.sum)/cake.min
