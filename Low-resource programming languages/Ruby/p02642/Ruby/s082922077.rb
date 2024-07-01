n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
c = Array.new(n, false)
a.uniq!
a.sort!
n = a.size
count = 0
check = true
i = 0
if a.size == 1
    count = 1
    check = false
end
while(check)
    b = a.delete_at(0)
    c.delete_at(0)
    a.size.times{|num|
        if !c[num-1] && (a[num-1]%b == 0)
            count = count+1
            c[num-1] = true
        end
    }
    if a.size == 0
        check = false
    end
end
print n - count