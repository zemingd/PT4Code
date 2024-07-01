t = gets.to_i
data = gets.split
data = data.map(&:to_i)
z = 1
t.times do
    print data.index(z) + 1 , " "
    z += 1
end