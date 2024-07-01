N = gets.strip.to_i
p = gets.strip.split.map(&:to_i)



ans=0
(2..N-1).reverse_each do |i|
    p0=p[i-2]
    p1=p[i-1]
    p2=p[i]
    
    if p0<p1 && p1<p2 || p0>p1 && p1>p2
        ans+=1
    end

end

puts ans
