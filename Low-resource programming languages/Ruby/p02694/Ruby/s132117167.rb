x = gets.to_i
d = 100
count = 0
while d < x
    d = (d * 1.01).floor
    count += 1
end
puts count