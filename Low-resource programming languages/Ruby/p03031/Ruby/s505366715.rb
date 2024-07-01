N, M = gets.split.map(&:to_i)
k = []
s = []
M.times do |i|
  tmp = []
  s[i] = []
  tmp = gets.split.map(&:to_i)
  k[i] = tmp[0]
  s[i] = tmp.slice(1, k[i])
end
p = []
p = gets.split.map(&:to_i)

# N,Mは最大10なのでbit全探索でいけそう
# 電球の全bitパターン検索
ans = 0
# iのjbit目が1のときスイッチon，0のときoff
(1<<N).times do |i|
  # puts "bit = #{i.to_s(2)}"
  flag = false
  # 各電球が点灯するか調べる
  M.times do |j|
    cnt = 0
    # 自分のつながってる各スイッチがon/offか見る
    s[j].each do |sw|
      cnt += i[sw-1]
    end
    cnt %= 2 
    # puts "電球#{j} cnt = #{cnt}"
    # 1こでもonにならない電球があればbreak
    if cnt != p[j]
      flag = true
      break
    end
  end
  if !flag
    ans += 1
  end
end

puts ans