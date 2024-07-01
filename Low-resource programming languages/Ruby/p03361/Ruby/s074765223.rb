n = gets.chomp.split(" ").map(&:to_i)
height = n[0]
width = n[1]

map = Array.new()

n[0].times do
    map.push(gets.chomp.split(""))
end

fullfillFrag = true
height.times do |h|
    width.times do |w|
        if map[h][w] == "#"
            canPaint = 1
            if 0 <= h - 1 and map[h - 1][w] == "#"
                canPaint += 1
            end
            if h + 1 < height and map[h + 1][w] == "#"
                canPaint += 1
            end
            if 0 <= w - 1 and map[h][w - 1] == "#"
                canPaint += 1
            end
            if w + 1 < height and map[h][w + 1] == "#"
                canPaint += 1
            end
            if canPaint < 2
                fullfillFrag = false
                break
            end
        end
    end
    if fullfillFrag == false
        break
    end
end

if fullfillFrag
    puts "Yes"
else
    puts "No"
end
