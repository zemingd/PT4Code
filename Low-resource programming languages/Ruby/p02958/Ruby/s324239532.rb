N = gets.to_i
ps = gets.split.map(&:to_i)
ps_sort = ps.sort

tmp = 0
ps.each.with_index{|x,i|
    tmp += 1 if x != ps_sort[i]
}
ans = tmp < 3 ? "YES" : "NO"
puts ans
