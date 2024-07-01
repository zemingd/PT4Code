N,K = (gets).split(" ").map { |i| i.to_i }
ss = ((gets).delete("\n")).chars.map { |s| s.to_i }
#p ss

# 処理をわかりやすくするために前後に１を入れる
ss.insert(0, 1)
ss.push(1)
#p ss

# マップ化する
$map = []
def map_first(ss)
    $map[0] = []
    n = 0
    hs = 0
    st = 0
    st_p = 1
    f = false
    ss.each_with_index do |s,i|
        next if i==0
        if s == 1 then # hand stand
            if f then
                $map[0][n] = [hs,st]
                n = n + 1
                st = 0
                hs = 0
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
    $map[0][n] = [hs-1,st]
    #p $map[0]
    return n
end

map_first(ss)

# くっつけるとか考えないでひたすら計算する動的計画法
1.upto(K) do |i|
    $map[i] = [$map[i-1][0]]
    ($map[0].length-i).times do |j|
        $map[i][j] = [$map[i-1][j][0] + $map[i-1][j][1] + $map[0][i+j][0], $map[0][i+j][1]]
    end
    #p $map[i]
end

res = $map[K].map {|m| m[0]}
#p res
puts res.max