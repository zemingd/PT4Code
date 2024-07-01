def d
    n = gets.chomp.to_i
    arr = Array.new
    total = 0
    max = 0
    1..n.times do |i|
        ab = gets.chomp.split(/\s/).map{|x| x.to_i}
        arr.push ab
        total += ab[0]
        max = [max, ab[1]].max
    end

#    p total
#    p max
    p arr.sort!{|a, b| a[1] <=> b[1]}#.reverse

    if total > max
        puts 'No'
        return
    end

    work = 0
    arr.each do |ar|
        work += ar[0]
        if work > ar[1]
            puts 'No'
            return
        end
    end

    puts 'Yes'
end

d