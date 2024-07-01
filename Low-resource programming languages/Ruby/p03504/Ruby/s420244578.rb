n, c = gets.split.map(&:to_i)
stc = n.times.map {gets.split.map(&:to_i)}.sort_by{|e| e[0]}

memo = Array.new(c+1)
stc.each do |s,t,ch|
    i = memo.index{|e| e && e < s}
    memo[i] = nil if !memo[ch] && i
    memo[ch] = t
end

p memo.compact.size