S = gets.sub("\n", "").chars
T = gets.sub("\n", "").chars

# チェック用
chk = S.uniq

# 数が同じ文字
tmp = Hash.new
idx = Hash.new
S.each do |c|
    break if (chk && tmp.keys).length == chk.length
    next if tmp.keys.include?(c)
    
    T.each do |d|
        next if tmp.values.include?(d)
        
        if S.select{|e| e == c}.length == T.select{|e| e == d}.length
            tmp[c] = d
            idx[c] = S.index(c)
        end
    end
end

tmp.each do |k, v|
    S.map!.with_index{|c, i| (!idx[c].nil? && i >= idx[c] &&  c == k) ? v : c}
end

# 各文字の数が同じ？(入れ替えで一致できる？)
diff = false
mem = []
S.each do |c|
    break mem.length == chk.length
    next if mem.include?(c)
    if S.select{|d| c == d}.length != T.select{|d| c == d}.length
        diff = true
        break
    end
    mem << c
end

puts diff ? 'No' : 'Yes'