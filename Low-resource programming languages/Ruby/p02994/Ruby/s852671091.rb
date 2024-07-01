n,l=gets.split.map &:to_i
aji=(l-1)*n+n*(n+1)/2

if l>=0
    p aji-l
elsif n+l-1>=0
    p aji
else
    p aji-n-l+1
end
