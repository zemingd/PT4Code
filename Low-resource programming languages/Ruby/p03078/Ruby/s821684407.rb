x, y, z, k = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
c = gets.chomp.split(' ').map(&:to_i)

ab = []
a.each do |ai|
  b.each do |bi|
    ab << ai + bi
  end
end
ab = ab.sort.reverse[0, k]

results = []
c.each do |ci|
  ab.each do |abi|
    results << abi + ci
  end
end

puts results.sort.reverse[0, k]
