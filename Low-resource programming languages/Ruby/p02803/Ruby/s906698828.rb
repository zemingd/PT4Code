H,W=gets.split.map(&:to_i)
ss=$<.read.split
INF=2**30
d=Array.new(H*W){Array.new(H*W,INF)}

def pos(y,x)
    y*W+x
end

ps  = []
H.times do |i|
    W.times do |j|
        if ss[i][j] == '.'
            pt = pos(i,j)
            d[pt][pt] = 0
            ps << pt
            d[pos(i,j)][pos(i-1,j)] = 1 if 0 <= i-1 && ss[i-1][j] == '.'
            d[pos(i,j)][pos(i+1,j)] = 1 if i+1 < H && ss[i+1][j] == '.'
            d[pos(i,j)][pos(i,j-1)] = 1 if 0 <= j-1 && ss[i][j-1] == '.'
            d[pos(i,j)][pos(i,j+1)] = 1 if j+1 < W && ss[i][j+1] == '.'
        end
    end
end

ps.each do |k|
    ps.each do |i|
        ps.each do |j|
            t = d[i][k]+d[k][j]
            d[i][j] = t if t < d[i][j]
        end
    end
end

p d

ret = d.flatten.select {|n| n!=INF}.max

puts ret
