n = gets.to_i
meta = []
# 全部zero3つ埋めの文字列にしてソートする
# hogestr_001_020
n.times do |i|
    s, p = gets.split.map(&:chomp)
    meta.push("#{s}_#{format('%03d', p.to_i)}_#{format('%03d', i+1)}")
end

# cityでソート
meta.sort!
res = []
city = []
s_o = meta[0].split('_')[0]
# puts ("s_o: #{s_o}")
meta.each do |m|
    s_n, p, j = m.split('_')
    # 違うcityになるまで追加
    # puts(s_n, p, j)
    if s_n == s_o then
        # 同じなら、同じmetaに追加
        city.push(p+'_'+j)
        # puts city
    else
        city = city.sort.reverse
        # 次のcityになったら前のcityを追加して新規作成
        city.each do |c|
            res.push(c.split('_')[1].to_i)
        end
        # リセット
        s_o = s_n
        city = []
        city.push(p+'_'+j)
    end
end
city = city.sort.reverse
# 次のcityになったら前のcityを追加して新規作成
city.each do |c|
    res.push(c.split('_')[1].to_i)
end
puts res