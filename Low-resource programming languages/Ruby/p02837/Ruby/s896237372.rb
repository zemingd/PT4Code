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
      # puts "証言：人#{u[0]}=#{u[1]==i[key-1] ? 1 : 0}"
      # 正直者と仮定してるやつに矛盾がないか見ていく
      if i[key-1] == 1
        # u[0]は言及されている人
        if not i[u[0]-1] == u[1]
          # 正直者と仮定してる奴が間違ってた場合，次のiに行く
          # puts "矛盾\n"
          continue = true
          break
        end
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
