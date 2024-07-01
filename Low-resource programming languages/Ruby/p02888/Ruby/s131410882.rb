N = gets.to_i
L = gets.split.map(&:to_i).sort
ans = 0
for l2 in 1..N-1
    for l1 in (l2+1)..(N-1)
        a = L[0..[(l2-1), 0].max].bsearch_index{|l| l > L[l1] - L[l2]}
        ans += (a..(l2 - 1)).size if not a.nil?
    end
end
p ans