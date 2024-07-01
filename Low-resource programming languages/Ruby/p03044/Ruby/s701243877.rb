n = gets.to_i
v=$<.map{|s|s.split.map &:to_i}.sort.map{|m|[m[0]-1,m[1]-1,m[2]]}
@p = Array.new(n,nil)
@r = Array.new(n,0)
@w = Array.new(n,0)

# 検索
def find(x)
    if @p[x] == nil
        return x
    else
        y = find(@p[x])
        @w[x] += @w[@p[x]]
        @p[x] = y
        return y
    end
end

# 併合
def union(x, y, w)
    rx = find(x)
    ry = find(y)
    @p[rx] = ry
    @w[rx] = w - @w[x] + @w[y]
end

v.each do |e|
    union(e[1],e[0],e[2])
end

(0...n).each{|t| find(t)}

puts @w.map{|m| m.to_i%2}
