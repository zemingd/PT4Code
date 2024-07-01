# なぜか 4WA
# ってか最初のテストケースでREなるのなんなん

# Dは不変なのでaiからai+1には必ずたどり着け、
# 最短でai+1 - aiぶん一気にすすむ1手、
# 最長で1ずつすすむ ai+1 - ai 手
# それぞれの差をとって1~最大公約数の約数を試していき、
# スタート地点から最も近い場所に到達できればその値ですべての都市を回れる
# （行き過ぎたら 次の値を試す）


# という方針でやったら2WAだったのだがどこが間違ってるのかわからん

# 諦めて解説をみたら全部の位置とのgcdを取るという感じで納得感が薄い

# difのとこがおかしかった（n=2の場合）のを直してみたバージョン
# ↑やっただけでTLEになったのでマジで鬱になった ふつうに解答通り終わらせるためだけの自戒バージョン

n, pos = gets.chomp.split.map(&:to_i)
@cities = gets.chomp.split.map(&:to_i).sort
# 最初にn==1の場合だけやっとく 1ずつしか進めない
if n==1
  puts (@cities[0]-pos).abs
  exit
end
<<~EOS
dif = []  # 各都市間の差
(n-1).times do |i|
  dif << @cities[i+1] - @cities[i]
end
EOS

def gcd(a, b)
  return a if b.zero?
  return gcd(b, a) if a<b
  return gcd(b, a%b)
end

gcdn = gcd((pos - @cities[0]).abs, (pos - @cities[1]).abs)
(n-2).times do |i|
  gcdn = gcd(gcdn, (pos-@cities[i+2]).abs)
end
puts gcdn
<<~EOS
# 各都市間の差の最大公約数
gcdn = 1
if dif.size == 1
  # これを忘れていたっぽい
  gcdn = gcd(dif[0], pos)
end
if dif.size >= 2
  gcdn = gcd(dif[0], dif[1])
end
2.upto(n-2) do |i|
  gcdn = gcd(dif[i], gcdn)  # これが間違ってたっぽい
end
# 約数をとる ダルいのでgcdn/2までループすればいいんじゃないかな
yakusu = []
1.upto(gcdn/2) do |i|
  if (gcdn % i).zero?
    yakusu << i
  end
end
yakusu << gcdn
yakusu.reverse!
# これのでかいやつから試していって到達できればおｋ
# 最も速く到達できるやつをにぶたんで求める（どうせ到達できるので「posを越える最小の値」を求める）
# そもそもposが既に配列にある場合もあるか
if @cities[-1] < pos
  goal = @cities[-1]
  # 実装するの忘れてた 1WA
  yakusu.each do |y|
    if (pos-goal)%y == 0
      puts y
      exit
    end
  end
elsif @cities[-1] == pos
  # 2番目に大きいやつに向けて下っていく
  goal = @cities[-2]
  # 実装するの忘れてた 1WA
  yakusu.each do |y|
    if (pos-goal)%y == 0
      puts y
      exit
    end
  end
else
  # にぶたんで求める
  l, r = 0, n
  while r-l>1 do
    mid = (r+l)/2
    if @cities[mid] < pos
      l = mid + 1
    else
      r = mid
    end
  end
  # lが求めるやつね
  goal = @cities[l]
  if goal == pos
    goal = @cities[l+1]
  end
  yakusu.each do |y| 
    if (goal-pos)%y == 0
      puts y
      exit
    end
  end
end
EOS