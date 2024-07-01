count = 0
gets.to_i.times.map {gets.chomp.chars.sort.join}.combination(2) do |a, b|
  count += 1 if a == b
end
puts count