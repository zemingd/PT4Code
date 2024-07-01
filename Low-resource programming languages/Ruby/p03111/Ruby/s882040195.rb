N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{ gets.to_i }

def dfs(n, a, b, c)
    if n == N
        if [a, b, c].min > 0
            return (a-A).abs + (b-B).abs + (c-C).abs - 30
        end

        return 1e7
    end
    
    one = dfs(n+1, a + L[n], b, c) + 10
    two = dfs(n+1, a, b + L[n], c) + 10
    thr = dfs(n+1, a, b, c + L[n]) + 10
    fou = dfs(n+1, a, b, c)
    
    return [one,two,thr,fou].min
end

puts dfs(0, 0, 0, 0)
