n = gets.to_i
v=$<.map{|s|s.split.map(&:to_i)}.sort.map{|m|[m[0]-1,m[1]-1,m[2]]}
@p = Array.new(n,-1)
@r = Array.new(n,0)
@w = Array.new(n,0)

def find(x)
    if @p[x] == -1
        return x
    else
        y = find2(@p[x])
        @w[x] += @w[@p[x]]
        @p[x] = y
        return y
    end
end
def find2(x)
    if @p[x] == -1
        return x
    else
        y = find(@p[x])
        @w[x] += @w[@p[x]]
        @p[x] = y
        return y
    end
end

def union(x, y, w)
    rx = find(x)
    ry = find(y)
    @p[rx] = ry.to_i
    @w[rx] = w.to_i - @w[x].to_i + @w[y].to_i
end

v.each do |e|
    union(e[1],e[0],e[2])
end

n.times{|t| find(t)}

puts @w.map{|m| m%2}
