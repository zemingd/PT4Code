s=gets.chomp
k=gets.to_i

ord_a = 'a'.ord
ret = []
s.each_char do |c|
    n = 26 - (c.ord - 'a'.ord)
    if n <= k
        ret << 'a'
        k -= n
    else
        ret << c
    end
end

ret[-1] = (ret[-1].ord + (k%26)).chr
puts ret.join