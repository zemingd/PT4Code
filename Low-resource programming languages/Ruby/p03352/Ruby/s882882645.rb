require 'pp'

x = gets.chomp!.to_i
max_b = Math.sqrt(1000).to_i

beki = []
1.upto(max_b) do |b|
    2.upto(1000) do |p|
        y = b ** p
        if y <= 1000
            beki << y
        else
            break
        end
    end
end
beki.sort!

while beki.empty?.!
    y = beki.pop
    if y <= x
        puts y
        break
    end
end
