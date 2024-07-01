n = gets.to_i
arr = n.times.map {
  s, p = gets.split
  [s, p.to_i]
}

arr = arr.map.with_index(1).map { |(s, p), i| [s, -p, i] }

arr.sort.each do |s, p, i|
  puts i
end
