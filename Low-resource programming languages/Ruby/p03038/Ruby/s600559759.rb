N,M=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
ps=M.times.map{gets.split.map(&:to_i)}
for i in 0..M-1
    as.sort!
    idx=as.bsearch_index{|e|ps[i][1]<e}
    if idx.nil?
        idx=ps[i][0]
        as=Array.new(idx,ps[i][1])+as[idx..-1]
    else
        idx=ps[i][0] < idx ? ps[i][0] : idx
        as=Array.new(idx,ps[i][1])+as[idx..-1]
    end
end
p as.inject(:+)
