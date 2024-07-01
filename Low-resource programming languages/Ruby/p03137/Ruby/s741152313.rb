n, m = gets.split(' ').map(&:to_i)
xs = gets.split(' ').map(&:to_i)
xs.sort!
distances = (1...xs.length).map {|i| [i, xs[i] - xs[i - 1]] }
distances << [xs.length, 1 << 31]
distances.sort! {|a, b| b[1] <=> a[1] }

indexes = distances[0, [n, distances.length].min].map {|d| d[0] }
indexes.sort!

sum = 0
s = 0
indexes.each do |i|
  sum += xs[i - 1] - xs[s]
  s = i
end
puts sum

