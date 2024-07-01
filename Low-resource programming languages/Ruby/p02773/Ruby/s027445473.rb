n = gets.to_i
ss = n.times.map { gets.chomp }

max = 0
counts = ss.each_with_object(Hash.new(0)) do |s, h|
  h[s] += 1
  max = h[s] if h[s] >= max
end

puts counts.select { |_, v| v == max }.keys.sort
