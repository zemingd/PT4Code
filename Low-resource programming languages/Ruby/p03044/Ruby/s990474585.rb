def dfs(i, par=-1)
    return if @used[i]
    @used[i] = true
    @g[i].each do |j|
        dfs(j, i)
    end
    return if @flag
    a, b = i, par
    a, b = b, a if a > b
    if @path[[a,b]] == 1
        @ans[par] = 1
        @flag = true
    end
end

N=gets.to_i
UVW=(N-1).times.map{gets.split.map(&:to_i)}

@g=Array.new(N){[]}
@path=Hash.new(0)
odd_cnt=0
UVW.each do |u,v,w|
    uu, vv = u-1, v-1
    @g[uu] << vv
    @g[vv] << uu
    uu, vv = vv, uu if uu > vv
    @path[[uu,vv]] = w % 2
    odd_cnt += 1 if w.odd?
end

@ans = Array.new(N, 0)
@used = Array.new(N, false)
@flag = false
if odd_cnt.odd?
    dfs(0)
    puts @ans
else
    puts @ans
end
