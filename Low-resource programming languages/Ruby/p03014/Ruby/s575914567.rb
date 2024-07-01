H, W = gets.split.map(&:to_i)
Ss = Array.new(H) { gets.chomp }

left = Hash.new{|hash, key| hash[key] = []}
right = Hash.new{|hash, key| hash[key] = []}
up = Hash.new{|hash, key| hash[key] = []}
down = Hash.new{|hash, key| hash[key] = []}

for i in 0...H do
    for j in 0...W do

        if (Ss[i][j] === "#")
            left[i][j] = 0
        elsif (j === 0)
            left[i][j] = 1
        else
            left[i][j] = left[i][j-1] + 1
        end

        if (Ss[i][j] === "#")
            up[i][j] = 0
        elsif (i === 0)
            up[i][j] = 1
        else
            up[i][j] = up[i-1][j] + 1
        end

        right_j = W - 1 - j
        if (Ss[i][right_j] === "#")
            right[i][right_j] = 0
        elsif (right_j === W - 1)
            right[i][right_j] = 1
        else
            right[i][right_j] = right[i][right_j+1] + 1
        end

        down_i = H - 1 - i
        if (Ss[down_i][j] === "#")
            down[down_i][j] = 0
        elsif (down_i === H - 1)
            down[down_i][j] = 1
        else
            down[down_i][j] = down[down_i+1][j] + 1
        end
    end
end

ans = 0
tmp = 0
0.upto(H-1){|i|
    0.upto(W-1){|j|
        next if Ss[i][j] === "#"
        tmp = 0
        tmp += left[i][j] if j != 0
        tmp += right[i][j] if j != W-1
        tmp += up[i][j] if i != 0
        tmp += down[i][j] if i != H-1
        ans = [ans,tmp-3].max
    }
}

puts ans
