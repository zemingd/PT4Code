n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

flag = 0
if a.size % 2 == 0
    (a.size/2).downto(0) do |i|
        if flag == 0 then
            flag = 1
        else
            print " "
        end
        print "#{a[i*2-1]}"
    end
    0.step(a.size, 2) do |i|
        print " #{a[i]}" 
    end
else
    (a.size/2).downto(0) do |i|
        if flag == 0 then
            flag = 1
        else
            print " "
        end
        print "#{a[i*2]}"
    end
    1.step(a.size-2, 2) do |i|
        print " #{a[i]}" 
    end

end

print "\n"