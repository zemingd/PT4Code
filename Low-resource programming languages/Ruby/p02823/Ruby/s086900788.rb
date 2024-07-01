n,a,b = gets.split(" ").map(&:to_i)
if (b-a)%2 == 0 then
    print (b-a)/2
else
    if a-1 < n-b then
        if b-1 > a + (b-a-1)/2 then
            print a + (b-a-1)/2
        else
            print b-1
        end
    else
        if n-a > n-b+1 + (-a+b-1)/2 then
            print n-b+1 + (-a+b-1)/2
        else
            print n-a
        end
    end
end