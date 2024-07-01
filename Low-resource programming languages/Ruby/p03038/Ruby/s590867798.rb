n, m = gets.split(' ')
n = n.to_i
m = m.to_i

a = gets.split(' ')
m.times do
    b, c = gets.split(' ')
    b.to_i.times do
        a << c
    end
end

a.map!{|x| x.to_i}.sort_by!{|x| x}.reverse!

sum = 0
n.times do |i|
    sum += a[i]
end

print sum