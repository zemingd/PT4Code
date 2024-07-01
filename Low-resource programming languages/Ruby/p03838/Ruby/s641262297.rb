arg = gets.chomp
args = []
args = arg.split(" ")
args.map! do |i|
    i.to_i;
end
x = args[0]
y = args[1]

ax = x.abs
ay = y.abs

diff = (ax - ay).abs

count = 0

if ax < ay
    if x >= 0
        if y >= 0
            count += diff
        else
            count += diff + 2
        end
    else
        if y >= 0
            count =+ diff + 1
        else
            count += diff + 2
        end
    end
elsif ax > ay
    if x >= 0
        if y >= 0
            count += diff + 2
        else
            count += diff + 1
        end
    else
        if y >= 0
            count += diff + 2
        else
            count += diff
        end
    end
end

p count