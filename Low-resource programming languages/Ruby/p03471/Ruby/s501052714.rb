# 計算量を下げる 整数問題
n, y = gets.split.map(&:to_i)
res = Array.new(3, -1)
catch(:find) do
    0.upto(n) do |a|
        0.upto(n) do |b|
            c = n-a-b
            if c>=0 && a*10000+b*5000+c*1000 == y then
                res[0] = a
                res[1] = b
                res[2] = c
                throw :find
            end
        end
    end
end
puts res.join(' ')