k = gets.to_i

all = []
(1..k).each do |i|
  (1..k).each do |j|
    if i % 2 == 0 && j % 2 == 1
      all << [i, j]
    end
  end
end
all.uniq!

puts all.size
