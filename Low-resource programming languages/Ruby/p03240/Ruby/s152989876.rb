# 1以上100以下
N = gets.to_i
# X,Yは0以上100以下
# hは0以上1000000000以下
X = N.times.map { gets.split.map(&:to_i) }

xt = 0
yt = 0
ht = 0
N.times do |n|
  if X[n][2] > 0
    xt = X[n][0]
    yt = X[n][1]
    ht = X[n][2]
    break
  end
end

(0..100).each do |cx|
  (0..100).each do |cy|
    # 高さHを推定する
    # CxとCyは0..100なので総当たり
    # ht = h - (xt - cx).abs - (yt - cy).abs を右辺左辺入れ替え
    h = [ht + (xt - cx).abs + (yt - cy).abs, 0].max

    found = true
    (0...N).each do |i|
      # 推定した高さH,Cx,Cyが観測値100個全てと一致すればOK
      if X[i][2] != [h - (X[i][0] - cx).abs - (X[i][1] - cy).abs, 0].max
        found = false
        break
      end
    end
    if found
      puts [cx,cy,h].join(' ')
      exit
    end
  end
end