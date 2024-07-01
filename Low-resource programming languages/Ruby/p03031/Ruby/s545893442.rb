n, m = gets.split.map(&:to_i)
ss   = m.times.map{ gets.split.map(&:to_i) }
ps   = gets.split.map(&:to_i)

# 全てのスイッチの状態を出してみる
# 2^N の計算量になるが, N=10なので計算できる範囲.
# 1=on, 0=off
sws = [[1], [0]]
(n-1).times do | i |
  new_sws = []
  sws.each do | sw |
    new_sws << [sw, 1].flatten
    new_sws << [sw, 0].flatten
  end
  sws = new_sws
end

# SWの状態が条件に一致しているか確認する
ans = 0
sws.each do | sw |
  is_good = true
  0.upto(m-1) do | i |
    sum = 0
    #p "kohan = #{ss[i].slice(1, ss[i].size)}"
    #p "   sw = #{sw}"
    ss[i].slice(1, ss[i].size).each{|j| sum += sw[j-1]}
    if ps[i] != sum%2
      is_good = false
      break
    end
  end
  ans += 1 if is_good
end
p ans