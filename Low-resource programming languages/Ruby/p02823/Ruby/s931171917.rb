n,a,b = gets.split(" ").map(&:to_i)
if (b-a)%2 == 0 then
    print (b-a)/2
else
    if a-1 < n-b then
        if b-1 > a*2 then
            print (b*2-a)/2
        else
            print b-1
    else
        if n-a > (n-b)*2 then
            print (n+a-b)/2
        else
            print n-a
        end
    end
end