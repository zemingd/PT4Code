n = gets.to_i

ary = []
n.times do |i|
    s, p = gets.split(' ')
    ary << [i, s, p.to_i]
end

ary.sort_by!{|x| [x[1], -x[2]]}

ary.each do |f|
    puts f[0] + 1
end