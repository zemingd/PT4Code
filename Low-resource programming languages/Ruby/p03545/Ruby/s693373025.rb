s = gets.chomp.split('').map(&:to_i)
8.times do |i|
    ope = []
    3.times do |j|
        if (i & (1 << j)) > 0
            ope.push('-')
        else
            ope.push('+')
        end
    end
    hoge = ''
    3.times do |j|
        hoge += s[j].to_s + ope[j]
    end
    hoge += s[3].to_s
    if eval(hoge) == 7
        hoge += "=7"
        puts hoge
        exit
    end
end