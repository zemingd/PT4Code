require 'set'

N = gets.to_i
a = gets.split.map(&:to_i)
a.unshift(0)

b = Array.new

for i in 1..N
    target = N - i + 1

    s = 0
    r = target * 2
    while r <= N
        if b.include?(r)
            s += 1
        end
        r += target 
    end

    if s % 2 != a[target]
        b.push(target)
    end
end

if b.size == 0
    puts 0
else
    puts b.size
    puts b.join(' ')
end
