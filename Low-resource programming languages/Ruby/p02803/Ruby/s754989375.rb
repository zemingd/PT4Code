H, W = STDIN.gets.split(' ').map{|s| s.to_i}
S = []
while line = STDIN.gets
  S << line.chomp.split('')
end

INF = -1
DI  = [-1, 0, 1, 0]
DJ  = [0, -1, 0, 1]

ans = 0
queue = []
0.upto(H-1) do |si|
  0.upto(W-1) do |sj|
    # puts "--- si:#{si} sj:#{sj} ---"
    dist = Array.new(H).map{|a| Array.new(W, INF)}

    dist[si][sj] = 0
    queue << [si, sj]
    while(!queue.empty?) do
      i,j = queue.shift
      # puts "i:#{i},j:#{j}"
      0.upto(3) do |n|
        # 隣接マスの距離を求める
        ni = i + DI[n]
        nj = j + DJ[n]
        # puts "ni:#{ni} nj:#{nj}"
        # マップからはみ出てる
        next if ni < 0 or ni >= H or nj < 0 or nj >= W
        # 壁
        next if S[ni][nj] == '#'
        # すでに訪れた
        next if dist[ni][nj] != INF

        # はじめてだから距離を求める
        dist[ni][nj] = dist[i][j] + 1
        queue << [ni, nj]
      end

      ans = [ans, dist.map{|w| w.max}.max].max
    end
  end
end

puts ans

