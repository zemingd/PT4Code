"AGC 033 A - Darker and Darker"

# 入力
H, W = gets.split.map(&:to_i)
$c = []
H.times do |i|
  #.charsで1文字ずつ別の配列に入れる
  #.mapで '#'をtrue、それ以外をfalseに置き換える
  $c[i] = gets.chomp.chars.map{ |x| x == '#'}
end

# main
# '#'のある位置をqに入れていく
q = []
H.times do |i|
  W.times do |j|
    if $c[i][j]
      q.push([i, j])
    end
  end
end

res = 0
# 移動方向
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]
y, x = 0, 0
# 移動先
ny, nx = 0, 0
# 移動先を保存するキュー
nq = []
loop do
  # キューが空でない間   
  while q.size != 0
    # キューから1個取り出す
    y, x = q.shift
    # 各方向についてループ
    4.times do |i|
      ny = y + dy[i]
      nx = x + dx[i]
      # 移動先が$cの範囲内で壁ではなく、かつ白色ならば
      if (0<=nx) && (nx<W) && (0<=ny) && (ny<H) && (!$c[ny][nx])
        # 移動先に追加する
        nq.push([ny, nx])
        # 移動先を白から黒にする
        $c[ny][nx] = true
      end
    end
  end
  if nq.empty?
    # nqが空ってことは行ける先がないのでreturn
    break
  else
    # nqが空でないなら、resを1増やしてqとnqを交換して上に戻る
    res += 1
    q, nq = nq, q
  end
end

puts res