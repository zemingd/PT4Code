H,W=gets.split.map(&:to_i)
ss=$<.read.split
INF=2**30
d=Array.new(H*W){Array.new(H*W,INF)}

def pos(y,x)
    y*W+x
end

H.times do |i|
    pt = pos(i,i)
    d[pt][pt] = 0
    W.times do |j|
        if ss[i][j] == '.'
            d[pos(i,j)][pos(i+1,j)] = d[pos(i+1,j)][pos(i,j)] = 1 if ss[i+1] && ss[i+1][j] == '.'
            d[pos(i,j)][pos(i,j+1)] = d[pos(i,j+1)][pos(i,j)] = 1 if ss[i][j+1] == '.'
        end
    end
end

N=H*W
N.times do |k|
    N.times do |i|
        N.times do |j|
            d[i][j] = [d[i][j], d[i][k]+d[k][j]].min
        end
    end
end

ret = d.flatten.select {|n| n!=INF}.max

puts ret
