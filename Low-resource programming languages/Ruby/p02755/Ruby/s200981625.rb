A, B = gets.split.map{|i|i.to_i}
minA = A * 100 / 8
maxA = (A + 1) * 100 / 8 - 1
minB = B * 100 / 10
maxB = (B + 1) * 100 / 10 - 1
if maxA < minB or maxB < minA
    puts -1
else
    puts [minA, minB].max
end
