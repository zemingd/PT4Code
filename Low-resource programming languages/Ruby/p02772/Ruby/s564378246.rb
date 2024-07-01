n = gets.to_i
a = gets.split.map &:to_i
check = 0
n.times do |cnt|
    if (a[cnt] % 2) == 0
        if !((a[cnt] % 3) == 0 || (a[cnt] % 5) == 0)
            check = 1
        end
    end
end
if check == 0
    print "APPROVED"
else
    print "DENIED"
end