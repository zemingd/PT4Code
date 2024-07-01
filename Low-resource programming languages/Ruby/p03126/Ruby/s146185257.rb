n,m = gets.split.map(&:to_i)
favorites = []
count = 0

n.times do
  favorites.concat(gets.split.map(&:to_i)[1..-1])
end

(1..m).each do |i|
  if favorites.count(i) == n
    count += 1
  end
end

puts count