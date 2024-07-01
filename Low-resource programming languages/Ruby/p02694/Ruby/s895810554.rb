x = gets.to_i
y = 100
c = 0
while true
    y = (y * 1.01).to_i
    c += 1
    break if y >= x
end
puts c