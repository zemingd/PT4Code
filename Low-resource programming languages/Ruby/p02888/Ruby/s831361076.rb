N,*ls=$<.read.split.map(&:to_i)

ls = ls.sort

ret = 0

0.upto(N-3) do |i|
  (i+1).upto(N-2) do |j|
    t =ls[i]+ls[j]
    idx = ls[j+1..-1].bsearch_index{|x| t<=x}
    ret += idx ? idx : N-1-j
    # p [i,j,idx,ls[i]+ls[j],ls[j+1..-1],ret]
  end
end

p ret
