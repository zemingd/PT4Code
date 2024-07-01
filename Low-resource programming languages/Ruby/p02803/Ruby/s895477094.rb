h,w = gets.chomp.split(' ').map(&:to_i)
maze = []
h.times do
    maze << gets.chomp.chars
end
def WidthFirstSearch(row,column,meiro)
    if meiro[row][column] == "#"
        return -1
    end
    visited = []
    count_length = 0
    meiro.size.times do |r|
        visited << [-1]*meiro[0].size
    end
    return wfs(row,column,visited,count_length,meiro)
end

def wfs(row,column,visited,length,m)
    q = []
    q<<[row,column,length]
    while q.size > 0
        r,c,l = q.shift
        if visited[r][c]==-1
            visited[r][c]=l
            if ((r+1)<(m.size))&&(m[r+1][c]==".")&&(visited[r+1][c]==-1)
                q<<[r+1,c,l+1]
            end
            if((c+1)<(m[0].size))&&(m[r][c+1]==".")&&(visited[r][c+1]==-1)
                q<<[r,c+1,l+1]
            end
            if((r-1)>=0&&(m[r-1][c]=="."))&&(visited[r-1][c]==-1)
                q<<[r-1,c,l+1]
            end
            if((c-1)>=0&&(m[r][c-1]=="."))&&(visited[r][c-1]==-1)
                q<<[r,c-1,l+1]
            end
        end
    end
    return visited.flatten.max
end

ans = []
h.times do |r|
    w.times do |c|
        ans << WidthFirstSearch(r,c,maze)
    end
end
puts ans.max