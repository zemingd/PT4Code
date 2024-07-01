n, m = gets.split.map(&:to_i)
sort_list = Array.new(n)
list = []
sort_list.size.times {|i| sort_list[i]=[]}

m.times do |i|
    a,b = gets.split.map(&:to_i)
    list.push([a,b])
    sort_list[a-1].push(b)
end

n.times {|i| sort_list[i].sort!}

list.each do |col|
    k = sort_list[col[0]-1].index(col[1])+1
    puts "%06d" % col[0] + "%06d" % k 
end