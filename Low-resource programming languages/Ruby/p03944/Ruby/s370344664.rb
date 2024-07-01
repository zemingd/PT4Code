W, H, N = gets.split.map(&:to_i)
ary = Array.new(W).map{Array.new(H, 0)}
1.upto(N) do |n|
    x, y, a = gets.split.map(&:to_i)
    case a
    when 1 then
        if x > 0
            x.downto(1) do |i|
                H.downto(1) do |j|
                    ary[i-1][j-1] = 1
                end
            end
        end
    when 2 then
        if x < W
            (x+1).upto(W) do |i|
                H.downto(1) do |j|
                    ary[i-1][j-1] = 1
                end
            end
        end
    when 3 then
        if y > 0
            y.downto(1) do |j|
                W.downto(1) do |i|
                    ary[i-1][j-1] = 1
                end
            end
        end
    when 4 then
        if y < H
            (y+1).upto(H) do |j|
                W.downto(1) do |i|
                    ary[i-1][j-1] = 1
                end
            end
        end
    end
end
puts ary.flatten.count(0)