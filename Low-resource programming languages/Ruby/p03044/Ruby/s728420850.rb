if !ENV['RUBY_THREAD_VM_STACK_SIZE']
    exec({'RUBY_THREAD_VM_STACK_SIZE'=>'1000000000'}, '/usr/bin/ruby', $0)
end


def dfs(i, l=0)
    return if @used[i]
    @used[i] = true
    @g[i].each do |j|
        #a, b = i, j
        #a, b = b, a if a > b
        dfs(j, l ^ @path[[i, j]])
    end
    @ans[i] = l
end

N=gets.to_i
UVW=(N-1).times.map{gets.split.map(&:to_i)}

@g=Array.new(N){[]}
@path=Hash.new(0)
UVW.each do |u,v,w|
    u -= 1
    v -= 1
    @g[u] << v
    @g[v] << u
    #u, v = v, u if u > v
    @path[[u, v]] = w % 2
    @path[[v, u]] = w % 2
end

@used=Array.new(N, false)
@ans=Array.new(N, 0)
dfs(0)
puts @ans
