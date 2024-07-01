n,a,b = gets.split(" ").map(&:to_i)
if (b-a)%2 == 0 then
    print (b-a)/2
else
    if a < n-b then
        print b-1
    else
        print n-a-1
    end
end