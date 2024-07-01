"AGC 033 A - Darker and Darker"

# 入力
H, W = gets.split.map(&:to_i)
$c = []
H.times do |i|
  $c[i] = gets.chomp
end

# bfs
def bfs(q, res, a=$c)
  # 移動方向
  dx = [1, 0, -1, 0]
  dy = [0, 1, 0, -1]
  y, x = 0, 0
  # 移動先
  ny, nx = 0, 0
  # 移動先を保存するキュー
  nq = []
  # キューが空でない間
  while q.size != 0
    # キューから1個取り出す
    y, x = q.shift
    # 各方向についてループ
    4.times do |i|
      ny = y + dy[i]
      nx = x + dx[i]
      # 移動先が$cの範囲内で壁ではなく、かつ白色ならば
      if (0<=nx) && (nx<W) && (0<=ny) && (ny<H) && ($c[ny][nx]=='.')
        # 移動先に追加する
        nq.push([ny, nx])
        # 移動先を白から黒にする
        $c[ny][nx] = '#'
      end
    end
  end
  # nqがnilってことは行ける先がないのでreturn
  if nq.empty?
    return res
  end
  # この時点でqは空になってる
  # 新たなqをnqにしてbfsを呼び出す
  bfs(nq, res+1)
end

# main
sy, sx = 0, 0
tmp = []
# '#'のある位置をarrに入れていく
arr = []
H.times do |i|
  W.times do |j|
    if $c[i][j] == '#'
      arr.push([i, j])
    end
  end
end
# 配列arrをbfs()に渡す
puts bfs(arr, 0)