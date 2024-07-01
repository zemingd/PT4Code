N,M = gets.strip.split.map(&:to_i)
high = gets.strip.split.map(&:to_i)

ary = Array.new(N,1) #個数が先
M.times do #こうしてM行を1行ずつ読んでいく
  x,y = gets.strip.split.map(&:to_i)
  #予選決勝砲（脱落車を弾いていく）
  if high[x-1] > high[y-1] then
    ary[y-1] = 0
  elsif high[x-1] < high[y-1] then
    ary[x-1] = 0
  else
    ary[x-1] = 0
    ary[y-1] = 0
  end
end
#小さい方だけをどんどん潰していけばOK、大きい方はいじらない
#最後まで１のままだった奴が合格
puts ary.sum