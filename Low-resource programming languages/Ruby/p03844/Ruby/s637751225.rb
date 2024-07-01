gets.to_i
times = gets.split(' ').map(&:to_i)
m = gets.to_i
drinks = m.times.map do |_|
  gets.split(' ').map(&:to_i)
end

times_map = times.map.with_index(1) { |time, i|
  [i, time]
}.to_h

drinks.each do |d|
  p = d[0]
  x = d[1]
  hash = {}
  hash[p] = x
  sum = 0
  times_map.merge(hash).each do |d| sum += d[1] end
  print("#{sum}\n")
end