N,M=gets.split.map(&:to_i)
as=gets.split.map(&:to_i).sort
M.times do
    e=as[-1]/2
    em=e-1
    idx=as.bsearch_index{|n|em<n}
    # as.insert(idx.nil? ? 0 : idx,e)
    as=as[0..(idx.nil? ? 0 : idx)] + [e] + as[(idx.nil? ? 0 : idx)..-1] 
end
p as.inject(:+)
