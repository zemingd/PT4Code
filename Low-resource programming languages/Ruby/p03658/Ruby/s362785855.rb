n,k = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

hebi = l.sort.reverse
hebi = hebi.take(k)

toy = 0
hebi.each do |i|
  toy = toy + i
end

puts toy