N,M=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
BC=M.times.map{gets.split.map(&:to_i)}.sort_by{|a|a[1]}.reverse

change = 0
ans = 0
BC.each do |b,c|
    t = a.bsearch_index{|x| x>c} || N
    t = b if t > b

    break if t == 0
    ans += c*t
    a.shift(t)
end
unless a.empty?
    ans += a.inject(:+)
end
p ans
