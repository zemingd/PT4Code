#require 'pp'

n = gets.to_i
a_n = gets.split.map(&:to_i)
group = a_n.group_by {|x| x}

count = 0
a_n.each_with_index do |a, i|
    max = Math.sqrt(a).to_i + 1
    ok = true
    1.upto(max) do |n|
        if a % n == 0
            y = a / n
            next if n > y
            if group[n]
                ok = false
                break
            end

            if group[y]
                if group[y].size != 1
                    ok = false
                    break
                elsif group[y][0] != a
                    ok = false
                    break
                end
            end
        end
    end

    if ok
        count += 1
    end
end

puts count
