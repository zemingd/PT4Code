def soin_cnt(n)
    cnt = 0
    for i in 1..n
        cnt += 1 if n%i == 0
    end
    #print "#{n} #{cnt}\n"
    cnt
end

def soin(n)
    cnt = 0
    for i in 107..n
        next if i%2 == 0
        cnt += 1 if soin_cnt(i) == 8
    end
    cnt
end

def bb
    n = gets.chomp.to_i
    if n <= 104
        puts 0
    elsif n == 105
        puts 1
    else
        puts 1+soin(n)
    end
end

bb