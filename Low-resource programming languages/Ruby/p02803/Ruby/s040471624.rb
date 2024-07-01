H,W=gets.split.map(&:to_i)
ss=$<.read.split
INF=2**30
d=Array.new(H*W){Array.new(H*W,INF)}

def pos(y,x)
    (y-1)*W+(x-1)
end
def wall?(ss,i)
    y,x=i.divmod(W)
    ss[y][x] == '#'
end

ps  = []
H.times do |i|
    pt = pos(i,i)
    d[pt][pt] = 0
    W.times do |j|
        if ss[i][j] == '.'
            ps << pos(i,j)
            d[pos(i,j)][pos(i+1,j)] = d[pos(i+1,j)][pos(i,j)] = 1 if ss[i+1] && ss[i+1][j] == '.'
            d[pos(i,j)][pos(i,j+1)] = d[pos(i,j+1)][pos(i,j)] = 1 if ss[i][j+1] == '.'
        end
    end
end

N=H*W
ps.each do |k|
    ps.each do |i|
        ps.each do |j|
            t = d[i][k]+d[k][j]
            d[i][j] = t if t < d[i][j]
        end
    end
end

ret = d.flatten.select {|n| n!=INF}.max

puts ret
