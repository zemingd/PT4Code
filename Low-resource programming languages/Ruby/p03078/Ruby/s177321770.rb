x, y, z, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)

results = []
a.each do |ai|
  b.each do |bi|
    c.each do |ci|
      results << ai + bi + ci
    end
  end
end
puts results.sort.reverse[0, k]
