a = []
for i in 1..1000
    for j in 2..1000
        m = i ** j
        break if m > 1000
        a << m
    end
end
x = gets.chomp.to_i

b = a.sort.uniq.select{|v| v <= x}
puts b[-1]
