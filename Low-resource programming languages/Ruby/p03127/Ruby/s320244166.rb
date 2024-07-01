n = gets.to_i
a = gets.split.map(&:to_i)

while true
    amin = a.select{|i|i>0}.min
    amin_idx = a.index(amin)
    if amin == 1
        puts 1
        exit
    end

    for i in 0..a.length-1
        if a[i] > 0 && i != amin_idx
            a[i] -= amin * (a[i] / amin)
        end
    end

    if a.count{|i|i>0} == 1
        puts a.max
        exit
    end
end
