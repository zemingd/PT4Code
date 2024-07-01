n=gets.to_i

data=[1]
(2..Math.sqrt(n).ceil).each do |i|
    while n % i == 0
        n /= i
        data << i
    end
end
if n != 1
    data << n
end

data.sort!.reverse!
if data.size == 1
    puts 1
else
    l, r = data.shift, data.shift
    data.each do |n|
        if l > r
            r *= n
        else
            l *= n
        end
    end
    l, r = l.to_s.length, r.to_s.length
    puts l > r ? l : r
end