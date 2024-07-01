t = gets.to_i
data = gets.split
data = data.map(&:to_i)
z = 0
ans = []
for z in 1..t do 
    print data.index(z) + 1 , " "
end