n, m = gets.split.map(&:to_i)

py = m.times.with_object([]) do |i, obj| 
    pp, y = gets.split.map(&:to_i)
    obj << [i, pp, y]
end

count = Array.new(n + 1, "000001")
ans = Array.new(m)

py.sort_by{|e| e[2]}.each do |i, pp, y|
    ans[i] = pp.to_s.rjust(6, "0") + count[pp]
    count[pp] = count[pp].next
end

puts ans