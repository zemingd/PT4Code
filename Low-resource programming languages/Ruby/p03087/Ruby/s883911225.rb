gets
s = gets.chomp

idx = 0
pos = []
count = 1
ac = nil
s.each_char do |c|
    if ac
        if c == "C"
            pos.push([idx - 1, count])
            ac = nil
            count += 1
        end
    else
        if c == "A"
            ac = c
        end
    end
    idx += 1
end

while line = gets
    l, r = line.chomp.split(/\s/).map{|i| i.to_i - 1}

    left = nil
    right = nil
    last = 0

    pos.each do |i|
        if !left
            if l <= i[0]
                left = last
            end
        end

        if left
            if i[0] >= r
                right = last
                break
            end
        end
        
        last = i[1]
    end

    right = last if !right

    puts(right - left)
end
