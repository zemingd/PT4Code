n, m = gets.split(' ')
n = n.to_i
m = m.to_i

a = gets.split(' ')
a.map!{|x| x.to_i}
min = a.min
m.times do
    b, c = gets.split(' ')
    b.to_i.times do
        if min < c.to_i then
            a << c.to_i
        else
            break
        end
    end
end

a.sort_by!{|x| x}

sum = 0
n.times do |i|
    sum += a[-(i+1)]
end

print sum