n = gets.to_i

h = []
ans = []

n.times do |i|
  a,b = gets.split
  b = b.to_i
  h << [a,b,i+1]
end

h.sort_by! do |a,b,c|
  [a,-b]
end

h.each do |a,b,c|
  ans << c
end

puts ans