INPUT = gets
tmp = INPUT.split(" ")
L = tmp[0].to_i
R = tmp[1].to_i

min = 2019
isBreak = false

for i in L..R-1
    for j in i+1..R
        result = (i*j).modulo(2019)
        min = result if result < min
        if min == 2
            isBreak = true
            break
        end
    end
    break if isBreak
end

print min