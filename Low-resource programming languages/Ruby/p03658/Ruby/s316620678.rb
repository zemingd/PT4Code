n, k = gets.split.map(&:to_i)
i = gets.split.map(&:to_i).sort.reverse

snake = 0

k.times do |x|
  snake += i[x]
end

puts snake