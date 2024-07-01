def bfs(queue=[])
    res = 0
    visited = Array.new(H){Array.new(W, false)}
    while !queue.empty?
        h, w, cnt = queue.shift
        visited[h][w] = true
        [[0,1],[1,0],[0,-1],[-1,0]].each do |dh, dw|
            nh, nw = h+dh, w+dw
            next if nh < 0 || nh >= H || nw < 0 || nw >= W
            next if S[nh][nw] == "#"
            next if visited[nh][nw]
            visited[nh][nw] = true

            ncnt = cnt+1
            queue << [nh, nw, ncnt]
            res = ncnt if ncnt > res
        end
    end
    res
end

H,W = gets.split.map(&:to_i)
S = H.times.map{gets.chomp.chars}

ans = 0
H.times do |i|
    W.times do |j|
        next if S[i][j] == "#"
        t = bfs([[i,j,0]])
        ans = t if t > ans
    end
end
p ans
