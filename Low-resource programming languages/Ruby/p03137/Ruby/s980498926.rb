n,m=gets.split.map(&:to_i)
xs = gets.split.map(&:to_i).sort
distances = Array.new(m-1)

(0..xs.length-2).each_with_index do |_, i|
  distances[i] = xs[i+1]-xs[i]
end

distances = distances.sort
p distances[0..-n].inject(:+) || 0