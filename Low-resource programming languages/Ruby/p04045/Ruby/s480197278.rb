def check(num,arr)
    str = num.to_s.split('')
    f = false
    str.each{|x|
        arr.each{|y|
            f = f || x==y
        }
    }
    return f
end

n,k = gets.chomp.split.map(&:to_i)
d = gets.chomp.split

loop do
    if !check(n,d)
        puts n
        break
    else
        n += 1
    end
end