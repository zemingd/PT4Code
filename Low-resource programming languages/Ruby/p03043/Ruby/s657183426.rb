n, k = gets.chomp.split(" ").map {|item| item.to_i }
def XSquare(val, target_val)
    squre = 1
    loop do
        hoge = val * 2 ** squre
        if hoge >= target_val
            return squre
        else
        end
        squre += 1
    end
end

parcent = 0.0
if n >= k
    parcent += (n-k+1).to_f / n
    for i in 1..k-1
        need_square = XSquare(i, k)
        parcent += (1.0/n) * ((1.0/2) ** need_square)
    end
else
    for i in 1..n
        need_square = XSquare(i, k)
        parcent += (1.0/n) * ((1.0/2) ** need_square)
    end
end
puts parcent