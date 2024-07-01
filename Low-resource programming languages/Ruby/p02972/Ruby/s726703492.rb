require 'prime'
n = gets.to_i
a = gets.split.map(&:to_i)
flg = [0] * n
result = []


(1..n).reverse_each do |i|
    if flg[i-1] != a[i-1]
        result.push(i)
        flg[i] = flg[i] ^ 1
    end
    
    Prime.prime_division(i).each do |d|
        if flg[i] == 1
            flg[i/d[0]] = flg[i/d[0]] ^ 1 
        end        
    end
end

puts result.size
if result.any?
    puts result.join(" ")
end
