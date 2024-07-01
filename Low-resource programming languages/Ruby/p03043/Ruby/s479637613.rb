n,k=gets.split(" ").map(&:to_i)
p=0
c=0
ans=0
(1..n).each do |x|
    p=x
    while p<=k-1 do
        p*=2
        c+=1
    end
    ans=ans + (0.5**c)*(1/n.to_f)
    c=0
end
p ans