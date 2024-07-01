n,x = gets.split.map(&:to_i)
ar = []
ctr = 0
n.times do
  ar << gets.to_i
end

ar.each do |v|
  x -= v
  ctr += 1
end

while x >= ar.min
  x -= ar.min
  ctr += 1
end

puts ctr
