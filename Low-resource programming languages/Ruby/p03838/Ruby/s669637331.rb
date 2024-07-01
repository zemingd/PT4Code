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
    if x > 0
        count += diff
    else
        count += diff + 1
        x *= -1
    end
elsif ax > ay
    if x > 0
        count += diff + 1
        x *= -1
    else
        count += diff
    end
else
    
end

if (x < 0 && y < 0) || (x > 0 && y > 0)
else
    count += 1
    p "b"
end

p count