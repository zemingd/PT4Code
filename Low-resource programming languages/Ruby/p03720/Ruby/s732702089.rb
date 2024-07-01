N, M = gets.chop.split.map(&:to_i)

path_counts = Array.new(N+1, 0)

(1..M).to_a.each do |i|
  a, b = gets.chop.split.map(&:to_i)
  path_counts[a] += 1
  path_counts[b] += 1
end

puts path_counts[1..-1]