n = gets.to_i
d = gets.split(' ').map(&:to_i).sort_by{|x| x}

a, b = d.each_slice(n/2).to_a

if a[-1] == b[0] then
    print '0'
else
    print b[0] - a[-1]
end