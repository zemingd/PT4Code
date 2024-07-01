n = gets.to_i
ss = n.times.map { gets.chomp }

counts = ss.each_with_object(Hash.new(0)) do |s, h|
  h[s] += 1
end
max = counts.values.max

puts counts.select { |k, v| v == max }.map(&:first).sort
