i = gets.to_i
i.times do |i|
    x = i + 1
    if x % 3 == 0 then
        print " ", i+1
        next
    end
    while x > 0 do
        if x%10 == 3 then
            print " ", i+1
            break
        end
        x /= 10
    end
end
print "\n"
