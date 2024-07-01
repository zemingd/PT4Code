def agc_027_a
    n,x = gets.chomp.split(/\s/).map{|y| y.to_i}
    an = gets.chomp.split(/\s/).map{|y| y.to_i}.sort

    cnt = 0
    for i in 1..n
        if an[i-1] <= x
            x -= an[i-1]
            cnt += 1
        end
    end
    cnt -= 1 if x > 0 and cnt > 0

    puts cnt
end

agc_027_a