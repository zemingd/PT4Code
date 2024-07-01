n,a,b = gets.split(" ").map(&:to_i)
if (b-a)%2 == 0 then
    print (b-a)/2
else
    print (b-a)/2 + 1
end