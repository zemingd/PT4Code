n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

count = [0, 2, 5, 5, 4, 5, 6, 3, 7, 6]
use = []
a.map{ |i| count[i] }.uniq.sort.each do |k|
    9.downto(1).each do |i|
        if k == count[i] && a.include?(i)
            use << i
            break
        end
    end
end

f = [''] * (n + 1)
s = use.shift
(1..n/count[s]).each do |k|
    f[k*count[s]] = s.to_s * k
end

use.each do |i|
    len = count[i]
    (n+1-len).times do |j|
        if f[j] != ''
            if f[j + len] == ''
                f[j + len] = f[j] + i.to_s
            else
                if f[j + len].to_i. < (f[j] + i.to_s).to_i
                    f[j + len] = f[j] + i.to_s
                end
            end
        end
    end
end

puts f[n].split('').sort.reverse.join
