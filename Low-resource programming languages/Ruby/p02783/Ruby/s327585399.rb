imput = gets.split(' ').map(&:to_i)

n = 0
h = imput[0]
a = imput[1] 
while h > 0
    n += 1
    h -= a
end
print(n)