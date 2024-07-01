n = gets.to_i

t = []
for i in 1..n
    s, p = gets.split
    p = p.to_i
    t.push([s, -p, i])
end
t.sort_by!{|x| [x[0], x[1]]}

t.each do |i|
    puts i[2]
end