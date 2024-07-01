input = readlines
input.each{|num|
    num = num.chomp!
}

i = 0
last_min = 10
last = 0

while i < input.length
    digit = input[i].to_i % 10
    if digit != 0
        if last_min > digit
            last_min = digit
            last = i
        end
    end
    i = i + 1
end

i = 0
all = 0
while i < input.length
    if i != last
        n = (input[i].to_f / 10).ceil * 10
        all = all + n
    end
    i = i + 1
end

all = all + input[last].to_i

print all