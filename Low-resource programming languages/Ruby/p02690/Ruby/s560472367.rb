x = gets.to_i
a1 = []
a2 = []
up = (x**0.2).to_i
for i in 0..up
  y = (x-(i**5))**0.2
  if y - y.to_i == 0.0
    a1 = [i,y.to_i]
  end
end

for j in 0..999
  z = (x+(j**5))**0.2
  if z - z.to_i == 0.0
    a2 = [j,z.to_i]
  end
end

if a1 != []
  puts "#{a1[1]} -#{a1[0]}"
elsif a2 != []
  puts "#{a2[1]} #{a2[0]}"
end