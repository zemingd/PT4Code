require 'pp'

x, k, d = gets.split.map(&:to_i)
tmp_x = x
tmp_k = k

cnt = (x / d).abs 
if cnt <= k
    if x >= 0
        tmp_x -= cnt * d
        tmp_k -= cnt
    else
        tmp_x += cnt * d
        tmp_k += cnt 
    end
else
    if x >= 0
        tmp_x -= k * d
        tmp_k = 0
        puts tmp_x.abs
        exit 0
    else
        tmp_x += k * d
        tmp_k = 0
        puts tmp_x.abs
        exit 0 
    end
end

if tmp_k % 2 == 0
    puts tmp_x.abs
else
    puts [(tmp_x + d).abs, (tmp_x - d).abs].min
end
