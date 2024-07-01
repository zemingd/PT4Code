N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{ gets.to_i }
M = 1000000007

def dfs(n, a, b, c, aa, bb, cc)
    if n == N
        ret = M
        if aa > 0 && bb > 0 && cc > 0
            ret = [M, (a-A).abs + (b-B).abs + (c-C).abs+10*([aa-1,0].max)+10*([bb-1,0].max)+10*([cc-1,0].max)].min
        end
        #if min == 120
        #    puts "#{a} #{b} #{c} #{aa} #{bb} #{cc}"
        #end
        return ret
    end
    
    #puts $l[n]
    one = dfs(n+1, a + L[n], b, c, aa+1,bb,cc)
    two = dfs(n+1, a, b + L[n], c,aa,bb+1,cc)
    thr = dfs(n+1, a, b, c + L[n],aa,bb,cc+1)
    fou = dfs(n+1, a, b, c,aa,bb,cc)
    
    return [one,two,thr,fou].min
end

puts dfs(0, 0, 0, 0, 0, 0, 0)
