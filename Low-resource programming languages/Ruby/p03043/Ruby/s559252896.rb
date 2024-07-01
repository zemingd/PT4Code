n,m=gets.split.map(&:to_i)
a = (1..n).map do |ma|
    k = ma
    i = 1
    while k < m
        k = k * 2
        i= i * (0.5)
    end
    i
end
p a.inject(:+)/n