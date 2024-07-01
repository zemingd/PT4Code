a,b = gets.chomp.split(" ")
button = [a.to_i, b.to_i]
sum = 0
2.times do |i|
        m = button.max
        indx = button.index(m)[0]
        button.delete_at(indx)
        sum += m
        button.push(m-1)
end
puts sum