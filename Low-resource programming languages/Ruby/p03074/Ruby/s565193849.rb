N,K = (gets).split(" ").map { |i| i.to_i }
ss = ((gets).delete("\n")).chars.map { |s| s.to_i }
#p ss

# 処理をわかりやすくするために前後に１を入れる
ss.insert(0, 1)
ss.push(1)
#p ss

# マップ化する
$map = []
def map_update(ss)
    $map = []
    n = 0
    hs = 0
    st = 0
    st_p = 1
    f = false
    ss.each_with_index do |s,i|
        if s == 1 then # hand stand
            if f then
                $map[n] = [hs+st, st_p]
                n = n + 1
                st = 0
            end
            f = false
            hs = hs + 1
        else
            if not f then
                st_p = i
            end
            f = true
            st = st + 1
        end
    end
    $map[n] = [hs+st, ss.length]
    #p $map
    return n
end

# マップの隣り合う要素で最大になるものを探していく
def map_analyze(ss)
    tt = $map[0][0] + $map[1][0] # mapの長さが１のときは呼ばれないはず
    ii = $map[0][1]
    1.upto($map.length-2) do |i|
        t = $map[i][0] + $map[i+1][0]
        if tt < t then
            tt = t
            ii = $map[i][1]
        end
    end
    return tt,ii
end

# 処理していく
hs = ss.length - 2
K.times do
   n = map_update(ss)
   if n == 0 then
       break
   end
   tt,ii = map_analyze(ss)
   # 分析結果を元に逆立ちさせていく
   i = ii
   while ss[i] == 0
       ss[i] = 1
       i = i + 1
       if i == ss.length then
           i = i - 1 # 次の処理のためにインデックスをひとつ戻しておく
           break
       end
   end
   while ss[i] == 1 # いまの逆立ち集団の最後尾まで流す
       break if i == ss.length - 1
       i = i + 1
   end
   i = i - 1
   #p ss
   #puts "i = #{i}"
   # 逆立ちしてる人を数える
   hs = 0
   while ss[i] == 1
       hs = hs + 1
       i = i - 1
       if i == 0 then
           break # ０番目は処理のためのダミーなのでカウントしないようにする
       end
   end
end

puts hs