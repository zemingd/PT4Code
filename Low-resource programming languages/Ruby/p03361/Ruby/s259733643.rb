#set
h,w = gets.chomp.split(" ").map(&:to_i)
line = Array.new(h)
squares = Array.new(h) {Array.new(w, 0)}
answer = "Yes"

(0 .. h - 1).each do |i|
    line[i] = gets.chomp
    (0 .. w - 1).each do |j|
        squares[i][j] = line[i].split("")[j]
    end
end

#main
(0 .. h - 1).each do |i|
    (0 .. w - 1).each do |j|
        if squares[i][j] == "#" then
            chk_flag = 0
            (i - 1 .. i + 1).each do |x|
                (j - 1 .. j + 1).each do |y|
                        if ( x == i || y == j ) && x != y && x >= 0 && x < h && y >= 0 && y < w then
                            if squares[x][y] == "#" then
                                chk_flag += 1
                            end
                        end
                end
            end
            if chk_flag == 0 then
                answer = "No"
                print ("#{answer}\n")
                exit
            end
        end
    end
end

print ("#{answer}\n")
# (0 .. h - 1).each do |i|
# print ("#{squares[i].join}\n")
# end