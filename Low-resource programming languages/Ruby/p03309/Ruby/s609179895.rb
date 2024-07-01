@n = gets.to_i
as = gets.strip.split.map(&:to_i)

as2 = (1..@n).map { |i| as[i - 1] - i }.sort
max_a = as2.max
min_a = as2.min

cumsum = [0] * @n
for i in (0...@n)
    if i == 0
        cumsum[i] = as2[0]
    else
        cumsum[i] = cumsum[i - 1] + as2[i]
    end
end

# an - b の符号の変わり目を二分探索
def search(as2, b)
    lb = 0
    rb = as2.size
    while rb - lb > 1 do
        center = (lb + rb) / 2
        if as2[center] - b >= 0
            rb = center
        else
            lb = center
        end
    end
    return lb
end

def sorrow(cumsum, as2, b)
    # p cumsum
    # p as2
    n1 = search(as2, b)
    # p n1
    s = -2 * cumsum[n1] + cumsum[@n - 1] + (2 * (n1 + 1) - @n) * b
end

#puts sorrow(cumsum, as2, 1)
puts (min_a..max_a).map { |b| sorrow(cumsum, as2, b) }.min
