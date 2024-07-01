N, M = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i).sort.uniq

def reduce(ary)
    return nil if ary.any?(&:nil?)

    res = 1
    while ary.all?(&:even?)
        res = res * 2
        ary = ary.map { |e| e / 2 }
    end

    return nil if ary.any?(&:even?)

    res * ary.inject { |x, y| x * y }
end

def h(n)
    ((M-n/2)/n).floor + 1
end


res = reduce(A)
puts(res.nil? ? 0 : h(res))
