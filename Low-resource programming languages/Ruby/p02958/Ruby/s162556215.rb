n = gets.chomp.to_i
ps = gets.chomp.split(' ').map(&:to_i)
ps_sorted = ps.sort

if ps == ps_sorted
    puts 'YES'
    exit
end

n.times do |i|
    if ps[0] != ps.min
        min_i = ps.index(ps.min)
        ps[0], ps[min_i] = ps[min_i], ps[0]
        p ps
        if ps == ps.sort
            puts 'YES'
        else
            puts 'NO'
            exit
        end
    else
        ps.shift
    end
end