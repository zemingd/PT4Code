N = gets.to_i
# 人ごとの証言の数
a = []
# 証言
s = {}
N.times do |i|
  a[i] = gets.to_i
  # 人iの証言
  s[i+1] = []
  a[i].times do |j|
    # 人iのj番目の証言
    s[i+1][j] = gets.split.map(&:to_i)
  end
end

ans = 0
(1<<N).times do |i|
  # puts "i=#{i.to_s(2)}"
  cnt = 0
  # 一人ずつ矛盾がないかチェック
  continue = false
  s.each do |key, t|
    t.each do |u|
      # 矛盾が生じていないかチェック
      # keyは証言している人, u[0]は証言されている人
      # puts "証言：人#{u[0]}=#{u[1]==i[key-1] ? 1 : 0}"
      if not i[u[0]-1] == (u[1]==i[key-1] ? 1 : 0)
        # 矛盾があった場合，次のiにいく
        # puts "矛盾\n"
        continue = true
        break
      end
    end
    if continue
      break
    end
  end
  # 矛盾がなかった場合
  if continue == false
    cnt = i.to_s(2).count('1')
    ans = [cnt, ans].max
    # puts "#{ans}\n"
  end
end

puts ans
