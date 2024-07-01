N, M = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i).sort

# ds: distances
ds = Array.new(M - 1){0}

(M - 1).times { |i| ds[i] = a[i + 1] - a[i] } 
puts N < M ? ds.sort.reverse[(N - 1)..-1].inject(:+) : 0
