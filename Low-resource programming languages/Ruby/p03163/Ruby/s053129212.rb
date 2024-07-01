N,M = gets.split.map &:to_i
W,V = Array.new(N){gets.split.map &:to_i}.transpose
DP = Hash.new(0)
DP[0] = 0

N.times do |i|
    tmp = DP.dup
    DP.each do |w,v|
        key = W[i] + w
        if key <= M && tmp[key] < v + V[i]
            tmp[key] = v + V[i]
        end
    end
    DP = tmp
end

p DP.to_a.sort_by{|v|v[1]}[-1][1]