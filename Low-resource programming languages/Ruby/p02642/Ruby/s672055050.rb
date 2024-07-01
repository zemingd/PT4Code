require 'set'

n = gets.to_i
a_n = gets.split.map(&:to_i).sort!
group = []

count = 0
n.times do |i|
    if a_n[i] == a_n[i+1]
        if group[-1] != a_n[i]
            group << a_n[i]
        end
        next
    end

    ok = true
    group.length.times do |j|
        if a_n[i] % group[j] == 0
            ok = false
            break 
        end
    end

    if ok
        group << a_n[i]
        count += 1
    end
end

puts count
