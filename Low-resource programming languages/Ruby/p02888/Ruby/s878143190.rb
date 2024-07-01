N = gets.to_i
L = gets.split.map(&:to_i).sort
ans = 0
1.upto(N-1) do |l2|
    (l2+1).upto(N-1) do |l1|
        len1 = L[l1]
        len2 = L[l2]
        a = L.bsearch_index{|l| l > len1 - len2}
        ans += l2 - a if !a.nil? && l2 - a > 0
    end
end
p ans