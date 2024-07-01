n = gets.to_i
as = gets.chomp.split.map(&:to_i)
hash = Hash.new(0)
sides = []
as.each do |a|
  hash[a] += 1
end
hash.each do |k,v|
  if v >= 4
    sides << k
    sides << k
  elsif v >= 2
    sides << k
  end
end
if sides.size < 2
  ans = 0
else
  sides.sort!
  ans = sides[-1] * sides[-2]
end
puts ans