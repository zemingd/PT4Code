H,W=gets.split.map(&:to_i)
S=H.times.map{gets.chomp.chars}

up    = Array.new(H){Array.new(W,0)}
down  = Array.new(H){Array.new(W,0)}
right = Array.new(H){Array.new(W,0)}
left  = Array.new(H){Array.new(W,0)}


H.times do |h|
    W.times do |w|
        if S[h][w] == '.'
            if h == 0
                up[h][w] = 1
            else
                up[h][w] = up[h-1][w] + 1
            end

            if w == 0
                left[h][w] = 1
            else
                left[h][w] = left[h][w-1] + 1
            end

        end
        rh, rw = H-1-h, W-1-w
        if  S[rh][rw] == '.'
            if rh == H-1
                down[rh][rw] = 1
            else
                down[rh][rw] = down[rh+1][rw] + 1
            end

            if rw == W-1
                right[rh][rw] = 1
            else
                right[rh][rw] = right[rh][rw+1] + 1
            end
        end
    end
end

ans=0
H.times do |h|
    W.times do |w|
        sum = up[h][w] + left[h][w] + down[h][w] + right[h][w] - 3
        ans = ans > sum ? ans : sum
    end
end
p ans
