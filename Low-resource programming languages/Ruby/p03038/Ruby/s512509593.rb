N,M=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
BC=M.times.map{gets.split.map(&:to_i)}.sort_by{|a|-a[1]}

ans = 0
BC.each do |b,c|
    t = a.bsearch_index{|x| x>c} || a.size
    t = b if t > b
    #t = a[0, b].index {|x| x >= c } || [b, a.size].min

    break if t == 0
    ans += c*t
    a.shift(t)
end

puts ans + (a.inject(:+) || 0)
