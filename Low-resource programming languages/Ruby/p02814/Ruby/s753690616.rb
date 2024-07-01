N, M = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i).sort.uniq.reverse

def reduce(a, b)
    res = 1
    while a.even? && b.even?
        res = res * 2
        a = a / 2
        b = b / 2
    end

    return nil if a.even? || b.even?

    res * a * b
end

def h(n)
    ((M-n/2)/n).floor + 1
end


puts h(A.inject { |a, b| reduce(a, b)})
