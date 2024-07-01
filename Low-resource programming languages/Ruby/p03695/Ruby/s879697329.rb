n = gets.to_i

max = 0

smaller = []

a = gets.split.map{|x|
    color = x.to_i / 400
    if color >= 8 then
        max += 1
    else
        smaller.push(color)
    end
    color
}

min = smaller.sort.uniq.length
max += min

if max > 8 then
    max = 8
end

printf("%d %d\n", min, max)