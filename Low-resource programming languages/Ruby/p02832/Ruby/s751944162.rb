n = gets.to_i
a = gets.split.map &:to_i

if a.index(1) == nil
    p -1
else
    c = i = 0
    1.upto n do |s|
        break if (i=a[i..-1].index(s)) == nil
        c += 1
    end
    p a.size - c
end