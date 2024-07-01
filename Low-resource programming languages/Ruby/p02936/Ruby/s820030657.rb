N,Q=gets.split.map &:to_i
as=(N-1).times.map{gets.split.map{|i|i.to_i-1}}
qs=Q.times.map{gets.split.map(&:to_i)}
qs.map!{|i|[i[0]-1,i[1]]}

@tree=Hash.new
as.each do |i|
    for j in 0..1
        nj=(j+1)%2
        if @tree[i[j]].nil?
            @tree[i[j]]=[i[nj]]
        else
            @tree[i[j]] << i[nj]
        end
    end
end

def tree_flow(root)
    return if @tree[root].nil?
    @tree[root].each do |i|
        @tree[i].delete_at(@tree[i].index(root))
        tree_flow(i)
    end
end

def plus(pos,value)
    @ans[pos]+=value
    return if @tree[pos].empty?
    @tree[pos].each do |i|
        plus(i,value)
    end
end

@ans=Array.new(N,0)
tree_flow(0)
qs.each do |p,v|
    plus(p,v)
end
puts @ans.join(" ")
