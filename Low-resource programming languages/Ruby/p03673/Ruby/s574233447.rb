n = gets.to_i
a = gets.chomp.split.map(&:to_i)

ans = []
a.each_with_index do |a_n, i|
    if n % 2 == 0
        if i % 2 == 0
            ans.push(a_n)
        else
            ans.unshift(a_n)
        end
    else
        if i % 2 == 1
            ans.push(a_n)
        else
            ans.unshift(a_n)
        end
    end
end

ans.each_with_index do |num, i|
    if i == n - 1
        puts num
    else
        print "#{num} "
    end
end
