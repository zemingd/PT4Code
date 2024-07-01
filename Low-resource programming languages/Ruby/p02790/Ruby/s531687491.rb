a, b = gets.chomp.split(" ")

ind=["",""]

a.to_i.times do
  ind[0]+=b
end

b.to_i.times do
  ind[1]+=a
end

puts ind.sort[0]
