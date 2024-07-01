n, c = gets.split.map(&:to_i)
stc = n.times.map {gets.split.map(&:to_i)}.sort_by{|e| e[0]}

memo = Array.new(c+1)
stc.each do |s, t, cc|
    if memo[cc]
        memo[cc] = t
    elsif i = memo.index{|e| e && e < s}
        memo[i] = nil
        memo[cc] = t
    else
        memo[cc] = t
    end
end

p memo.compact.size