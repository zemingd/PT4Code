n = gets.to_i

ary = []

n.times do
    ary << gets.split(' ').map(&:to_i)
end

ary = ary.sort_by{|x| x[1]}

f = 1
time = 0
n.times do |i|
    time += ary[i][0]
    if time > ary[i][1] then
        f = 0
        break
    end
end

if f == 0 then
    print 'No'
else
    print 'Yes'
end