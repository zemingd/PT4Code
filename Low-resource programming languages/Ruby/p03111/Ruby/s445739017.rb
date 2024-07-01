def ascan; gets.split.map(&:to_i); end

N,A,B,C = ascan
L = N.times.map{gets.to_i}.to_a.sort

ABC = [A,B,C].sort


def judge(l)
    best = 1e9
    l.sort.combination(3) do |c|
        a = (c[0]-ABC[0]).abs + (c[1]-ABC[1]).abs + (c[2]-ABC[2]).abs 
        best = [a, best].min
    end
    best + (N-l.size)*10
end

@best = 1e9

[0,1,2,3].repeated_permutation(N) do |stat|
    next unless stat.sort.uniq[0..2] == [0,1,2]
    l = [0,0,0,0]
    L.zip(stat){|e,i| l[i] += e }
    @best = [@best, judge(l[0..2]) + (stat.count{|e| e!=3} - 3)*10].min
end
p @best