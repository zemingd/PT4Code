H, W = gets.chomp.split(" ").map(&:to_i)
S = H.times.map{gets.chomp}

def BFS(queue) # 幅優先探索
    until queue.empty?
        x, y, depth = queue.shift # x, y　迷路の中の座標　depth 歩数
                                  #　next   スキップ
        next unless 0 <= x && x < W && 0 <= y && y < H # 迷路の外側には出られない
        next if S[y][x] == '#' # 壁の時はスキップ
        next if@flag[y][x] != -1 # 歩数のカウンタ@flag 一度通ったところはいけない
        @flag[y][x] = depth 
        queue << [x + 1, y, depth + 1] #今いるマスの4方のマスに歩数を追加する
        queue << [x - 1, y, depth + 1]
        queue << [x, y + 1, depth + 1]
        queue << [x, y - 1, depth + 1]
    end
end

max = 0
H.times do |h|
    W.times do |w|
        @flag = Array.new(H){Array.new(W, -1)}
        BFS([[w, h, 0]])
        tmp = @flag.map{ |flag| flag.max}.max
        max = tmp if max < tmp
    end 
end

puts max

        