class Array
    def graphify(node)
        out = Array.new(node){Array.new(node,false)}
        self.each do |i,j,k|
            out[i-1][j-1]=k
            out[j-1][i-1]=k
        end
        return out
    end
end

def dfs(node,distance)
    @mark[node]=distance
    GRAPH[node].each_with_index do |e,idx|
        dfs(idx,distance+e) if e && @mark[idx]==-1
    end
    return
end

N = gets.to_i
as = (N-1).times.map{gets.split.map(&:to_i)}
GRAPH=as.graphify(N)
@mark=Array.new(N,-1)
dfs(0,0)
puts @mark.map{|i|i.odd? ? 1 : 0}
