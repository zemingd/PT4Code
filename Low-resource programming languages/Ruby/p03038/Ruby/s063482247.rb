n, m = gets.split(' ')
n = n.to_i
m = m.to_i
a = gets.split(' ')
a.map!{|x| x.to_i}.sort_by!{|x| x}

m.times do
    b, c = gets.split(' ')
    b = b.to_i
    if c.to_i > a[0] then
        if b > a.length then
            b = a.length
        end
        c = c.to_i
        b.times do |i|
            if a[i] < c then
                a[i] = c
            else
                break
            end
        end
        a.sort_by!{|x| x}
    end
end

print a.sum