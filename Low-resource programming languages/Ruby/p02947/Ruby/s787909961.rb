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

  a = (1..v).inject(&:*)
  b = (1..(v - 2)).inject(&:*)
  c = (1..2).inject(&:*)
  count += a / (b * c)
end

puts count
