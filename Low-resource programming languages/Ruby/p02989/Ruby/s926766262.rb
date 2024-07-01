N = gets.to_i
d = Array.new(N-1)
d = gets.split(" ").map(&:to_i);
d_sort = d.sort
c = d_sort[N/2] - d_sort[N/2 - 1]
puts c