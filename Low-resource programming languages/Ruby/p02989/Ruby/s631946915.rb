n = gets.to_i
d = gets.split.map(&:to_i)
arr = d.sort.each_slice(n/2).to_a
puts arr[1].first - arr[0].last