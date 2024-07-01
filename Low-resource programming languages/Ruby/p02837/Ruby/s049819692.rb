def verify(rel, n)
    max = 0
    1.upto(2 ** n) do |k|
        kk = Array.new(n, 0)
        i = 0
        while k > 0
            kk[i] = k % 2
            k /= 2
            i += 1
        end
        no = 0
        ret = 0
        rel.each_with_index do |r, i|
            next if kk[i] == 0
            r.each_with_index do |rr, j|
                next if rr == nil
                if kk[j] != rr
                    no += 1
                end
            end
            ret += 1
        end
        if no == 0
            max = ret if ret > max
        end
    end
    return max
end

n = gets.to_i
rel = Array.new(n).map { Array.new(n)  }
n.times do |i|
    a = gets.to_i
    a.times do |j|
        x, y = gets.split.map(&:to_i)
        rel[i][x-1] = y
    end
end

puts verify(rel, n)