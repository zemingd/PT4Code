while line = gets
    a,b = line.split(" ")
    sum = a.to_i + b.to_i
    puts sum.to_s.length
end