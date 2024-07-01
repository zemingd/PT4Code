H,W=gets.split.map(&:to_i)
ss=$<.read.split

max = 0
H.times do |y|
    W.times do |x|
        v=Array.new(H){Array.new(W,true)}
        d = 0
        q = [[x,y,0]]
        while !q.empty?
            x1,y1,d = q.shift
            if 0 <= y1-1 && v[y1-1][x1] && ss[y1-1][x1] == '.'
                v[y1-1][x1] = false
                q << [x1,y1-1,d+1]
            end
            if y1+1 < H && v[y1+1][x1] && ss[y1+1][x1] == '.'
                v[y1+1][x1] = false
                q << [x1,y1+1,d+1]
            end
            if 0 <= x1-1 && v[y1][x1-1] && ss[y1][x1-1] == '.'
                v[y1][x1-1] = false
                q << [x1-1,y1,d+1]
            end
            if x1+1 < W && v[y1][x1+1] && ss[y1][x1+1] == '.'
                v[y1][x1+1] = false
                q << [x1+1,y1,d+1]
            end
        end

        max = d if max < d
    end
end

puts max