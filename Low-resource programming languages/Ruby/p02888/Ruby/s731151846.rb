n = gets.to_i
l = gets.split.map(&:to_i).sort
ans=0
n.times do |i|
    for j in i+1..n-2
        x=l[i]+l[j]
        bi=l.bsearch_index{|c|x<=c}
        bi=n if bi.nil?
        ans += bi-j-1
    end
end
puts ans