h,w = gets.split(" ").map(&:to_i)
pic = Array.new(h) {gets.chomp.split("")}
ans = "Yes"

for i in 0 .. h-1 do
    for j in 0.. w-1 do
        if pic[i][j] == "#"
            ch = Array.new
            if i > 0 
                ch << pic[i-1][j]
            end
            if i < h-1
                ch << pic[i+1][j]
            end
            if j > 0 
                ch << pic[i][j-1]
            end
            if j < w-1
                ch << pic[i][j+1]
            end
            if ! ch.include?("#")
                ans = "No"
            end
        end
    end
end


puts ans