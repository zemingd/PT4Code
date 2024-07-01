def oddd(an)
    an.each do |a|
        return false if a % 2 == 0
    end
    return true
end

def evma(an)
    ma = 0
    an.each do |a|
        if a%2 == 0
            ma = [a, ma].max
        end
    end
    ma
end

def cc100
    n = gets.chomp.to_i
    an = gets.chomp.split(/\s/).map{|x| x.to_i}

    cnt = 0
    until oddd(an)
        ma = evma(an)
        for i in 0..(an.length-1)
            if an[i]%2 == 0
                an[i] = (an[i]==ma) ? an[i]/2 : an[i]*3
            else
                an[i] *= 3
            end
        end
        cnt += 1
    end
    puts cnt
end

cc100