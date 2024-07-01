n = gets.chomp.to_i
ary = gets.split.map(&:to_i)

map = Hash.new(0)

ary.each do |e|
  map[e] += 1
end

map2 = Hash.new

sum = 0

map.each do |k, v|
  map2[k] = v * (v-1) / 2
  sum += map2[k]
end

ary.each do |e|
  puts sum - (map[e] - 1)
end