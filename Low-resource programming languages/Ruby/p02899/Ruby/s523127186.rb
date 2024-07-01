t = gets.to_i
data = gets.split
data = data.map(&:to_i)
z = 0
t.times do
    z += 1
    print data.index(z) + 1 , " "
end