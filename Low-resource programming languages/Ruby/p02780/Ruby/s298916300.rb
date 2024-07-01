n,k=gets.chomp.split(" ").map(&:to_i)
pi=gets.chomp.split(" ").map(&:to_i)

ary=Array.new(n,0.0)
ary2=Array.new(n,0.0)

(0..n-1).each do |x|
    ary[x]=(pi[x]+1)/2.0
end

(0..k-1).each do |y|
    ary2[y]=ary2[y-1]+ary[y]
end

(k..n-1).each do |i|
    ary2[i]=ary2[i-1]+ary[i]-ary[i-k]
end

p ary2.max