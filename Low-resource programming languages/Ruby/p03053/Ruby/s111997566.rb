def number?(str)
    str = str.to_s
    # 文字列の先頭(\A)から末尾(\z)までが「0」から「9」の文字か
    nil != (str =~ /\A[0-9]+\z/)
end
H, W = gets.split.map(&:to_i)
ary = []
black_cnt = 0
total_cnt = H*W
H.times.map do 
    ary << gets.chomp.chars
    black_cnt += ary[-1].count('#')
end
max_cnt = 0
dist = Array.new(H){Array.new(W, 0)}
while black_cnt < total_cnt
    H.times do |x|
        W.times do |y|
            next if !x.between?(0, H-1) || !y.between?(0, W-1) || ary[x][y] == '#' || dist[x][y] > 0
            black_flag = false
            min = 2000
            [[-1,0],[0,-1],[1,0],[0,1]].each do |i, j|
                a, b = x + i, y + j
                next if !a.between?(0, H-1) || !b.between?(0, W-1)
                if ary[a][b] == '#'
                    black_flag = true 
                    break
                elsif dist[a][b].to_i > 0
                    min = [min, dist[a][b]].min
                end
            end
            if black_flag
                dist[x][y] = 1
                black_cnt += 1
            elsif min < 2000
                dist[x][y] = min+1
                black_cnt += 1
            end
            max_cnt = [max_cnt, dist[x][y]].max
        end
    end
end
puts max_cnt