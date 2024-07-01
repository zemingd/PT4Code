N = gets.to_i
L = gets.split.map(&:to_i).sort
ans = 0
for l2 in 1..N-1
    for l1 in (l2+1)..(N-1)
        a = L.bsearch_index{|l| l > L[l1] - L[l2]}
        ans += l2 - a if !a.nil? && l2 - a > 0
    end
end
p ans