n = gets.to_i
d = 100000
n.times do 
   d = d * 1.05
   d = (d / 1000).ceil * 1000
end
puts d