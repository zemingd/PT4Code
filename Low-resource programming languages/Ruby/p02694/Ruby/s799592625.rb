X = gets.to_i
a ,count =100, 0
loop do
    a = (a * 1.01).floor
    count += 1
    break if a >= X
end

puts count