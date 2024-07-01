h, w = gets.split(" ").map(&:to_i)
data = h.times.map do 
    gets.chomp.split("")
end

dx = [0, 0, 1, -1]
dy = [1, -1, 0, 0]

data.each_with_index do |i, idx|
    i.each_with_index do |j, jdx|
        if(j == "#" || j == "*")
            for k in 0..3 do
                height = idx + dy[k]
                width = jdx + dx[k]
                if(height < h && width < w && 0 <= height && 0 <= width)
                    if(data[height][width] == "#")
                        data[height][width] = "*"
                    end
                end
            end
        end
    end
end

data.each do |i|
    i.each do |j|
        if(j == "#")
            print("No")
            exit 0
        end
    end
end
print("Yes")