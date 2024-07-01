def gcm(x,y)
    return x if y == 0
    return gcm(y,x % y)
end

gets
x = 1
while s = gets
    y = s.to_i
    x = y * x / gcm(y,x)
end

puts x