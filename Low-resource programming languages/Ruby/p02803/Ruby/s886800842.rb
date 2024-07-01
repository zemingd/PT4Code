H,W=gets.split.map(&:to_i)
res=0
data=H.times.map{gets.chomp}
dir=[[-1,0],[1,0],[0,-1],[0,1]]
H.times do |i|
    W.times do |j|
        dist=Array.new(H){Array.new(W,0)}
        visit=Array.new(H){Array.new(W,false)}
        que=Array.new
        que.push([i,j])
        until que.empty?
            y,x=que.shift
            next if visit[y][x]
            visit[y][x]=true
            next if data[y][x]=="#"
            dir.each do |dx,dy|
                if (0<=x+dx && x+dx<W) && (0<=y+dy && y+dy<H)
                    next if data[y+dy][x+dx]=="#"
                    if !visit[y+dy][x+dx]
                        dist[y+dy][x+dx]=dist[y][x]+1
                    else
                        dist[y+dy][x+dx]=dist[y+dy][x+dx] > dist[y][x]+1 ? dist[y][x]+1 : dist[y+dy][x+dx]
                    end
                    que.push([y+dy,x+dx])
                end
            end
        end
        H.times do |k|
            W.times do |l|
                res=res<dist[k][l] ? dist[k][l] : res 
            end
        end
    end
end
puts res