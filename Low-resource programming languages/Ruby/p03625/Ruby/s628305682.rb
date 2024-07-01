n = gets.to_i
as = gets.chomp.split.map(&:to_i)
hash = Hash.new(0)
sides = []
as.each do |a|
  hash[a] += 1
end
hash.sort.reverse.each do |k,v|
  if v >= 2
    sides << k
  end
end
if sides.size < 2
  ans = 0
else
  ans = sides[0] * sides[1]
end
puts ans