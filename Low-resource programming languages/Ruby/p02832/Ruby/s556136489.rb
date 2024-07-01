n=gets.to_i
a=gets.split(" ").map(&:to_i)

nxt=1
(0..n-1).each do |x|
    if a[x]==nxt
        nxt+=1
    end
end
p nxt>1 ? n-(nxt-1) : -1