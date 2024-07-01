S = gets.sub("\n", "").chars
T = gets.sub("\n", "").chars

# 数が同じ文字
tmp = Hash.new
idx = Hash.new
S.each do |c|
    T.each do |d|
        if S.select{|e| e == c}.length == T.select{|e| e == d}.length
            if !(tmp.keys.include?(c) || tmp.values.include?(d))
                tmp[c] = d
                idx[c] = S.index(c)
            end
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
    if mem.include?(c)
        next
    end
    if S.select{|d| c == d}.length != T.select{|d| c == d}.length
        diff = true
        break
    end
    mem << c
end

puts diff ? 'No' : 'Yes'