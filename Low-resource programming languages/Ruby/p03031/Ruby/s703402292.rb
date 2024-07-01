n, m = gets.strip.split.map(&:to_i)
k = []
s = []
m.times do |i|
  s[i] = gets.chomp.split.map(&:to_i)
  k[i] = s[i].shift
end
p = gets.strip.split.map.map(&:to_i)

ans = 0
# スイッチの組み合わせ全てを試す　最大で2^10 = 1024回
[0,1].repeated_permutation(n) do |a|
  flag = false
  # 電球全てを巡回
  m.times do |i|
    tmp = 0
    # 電球に繋がっているスイッチを巡回
    s[i].each do |t|
      # スイッチがオンになっているとき、tmpに１を足す
      tmp += a[t-1]
    end
    # ついている電球を２で割った値が、p[i]と一致していないとき、すなわち電球がついていないときflagをtrueに
    if tmp % 2 != p[i]
      flg = true
      break
    end
  end
  # flagがtrueの時、すなわち電球がついていない時にans += 1を実行せず次に進む　
  # 電球がついている時、flag=falseの時ans += 1を実行する
  next if flg
  ans += 1
end

puts ans