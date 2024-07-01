n = gets.split[0]
a = (%w(1 2 3 4 5 6 7 8 9 0) - gets.split).sort
reverse = []
big = true
n.split(//).reverse.each.with_index(1) do |e,i|
    a.each do |x|
        if e == x && big == false || e < x
            reverse << x
            f = false
            break
        end
    end
    if reverse.size != i
        reverse[i-1] = a[0]
        big = ture
    end
end

res = []
big = false
n.split(//).each do |e|
    a.each do |x|
        if e == x
            res << x
            break
        elsif e < x 
            res << x
            big = true
        end
    end
end
if big == false && a[a.index(res[-1])+1] != nil
    res[-1] = a[a.index(res[-1])+1]
end
puts [res.join,reverse.join.reverse].min