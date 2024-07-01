N=gets.to_i

def k(n)
    Math.log10(n).floor + 1
end

min = 10
1.upto(10**5) do |i|
    r,q = N.divmod(i)
    if q == 0
        m = [k(r),k(i)].max
        min = m if m < min
    end
end

puts min