n, k = gets.split(" ").map(&:to_i)
h = gets.split(" ").map(&:to_i)

h = h.sort.slice(0, n - k)
puts (h.nil? || h.empty?) ? 0 : h.inject(:+)