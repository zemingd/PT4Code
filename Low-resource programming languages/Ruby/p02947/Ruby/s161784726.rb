n = gets.to_i
strings = Hash.new(0)

n.times do
  key = gets.chomp.chars.sort.join
  strings[key] += 1
end

count = 0
strings.each do |_k, v|
  next unless v > 1
  next count += 1 if v == 2
  count += [*1..v].combination(2).count
end

puts count
