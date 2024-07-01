def ascan; gets.split.map(&:to_i); end

N,A,B,C = ascan
L = N.times.map{gets.to_i}.to_a.sort

ABC = [A,B,C].sort


def judge(l)
    best = 1e9
    l.permutation(3) do |c|
        a = (c[0]-A).abs + (c[1]-B).abs + (c[2]-C).abs 
        best = [a, best].min
    end
    best + (N-l.size)*10
end

@best = 1e18

@h = {}
def dfs(l)
    
    @best = [@best, judge(l)].min
    return if l.size == 3
    
    l.size.times do |k|
        l2 = l[0...k]+l[(k+1)..-1]
        k.upto(l2.size-1) do |i|
            l2[i] += l[k]
            dfs(l2)
            l2[i] -= l[k]
        end
    end
    return
end

dfs(L)

p @best