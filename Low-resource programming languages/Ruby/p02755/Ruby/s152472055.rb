A, B = gets.split.map{|i|i.to_i}
minA = (A * 100 / 8.0).ceil
maxA = (A + 1) * 100 / 8 - 1 
minB = (B * 100 / 10.0).ceil
maxB = (B + 1) * 100 / 10 - 1
warn "%d-%d %d-%d" % [minA, maxA, minB, maxB]
if maxA < minB or maxB < minA
    puts -1
else
    puts [minA, minB].max
end
