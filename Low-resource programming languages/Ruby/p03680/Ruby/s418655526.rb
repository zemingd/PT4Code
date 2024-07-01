N = gets.to_i
a = N.times.map { gets.to_i }

lh = {}
light = 1
cnt = 0
loop do
  # ボタン2にライトが点灯していたら終了
  if light == 2
    p cnt
    break
  end

  # ライトの付いたボタンを押す
  light = a[light-1]

  # 押したボタンを再度押したら無理ゲー
  if lh[light]
    p -1
    break
  end

  lh[light] = 1
  cnt += 1
end