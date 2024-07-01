#require 'pp'

n, c = gets.split.map(&:to_i)
sw = []
sw2 = []
memo = {}
t_max = 0

n.times do |i|
    s, t, c = gets.split.map(&:to_i)
    memo[c] ||= []
    memo[c] << [s, t]
end
#pp memo

memo.each do |ch, r|
    r.sort!

    i = 0
    while r.size >= 2 && i < r.length
        x1 = r.shift
        x2 = r.shift
 
        if x1[1] == x2[0]
            r.unshift([x1[0], x2[1]])
        else
            i += 1
        end
    end

    r.each do |st, ed|
        sw << st
        sw2 << ed

        if ed > t_max
            t_max = ed
        end 
    end
end
sw.sort!
sw2.sort!

#pp sw
#pp sw2

counter = Array.new(t_max + 1, 0)
counter2 = Array.new(t_max + 1, 0)
sw.each do |s|
    counter[s - 1] += 1
end
sw2.each do |s|
    counter2[s] += 1
end
1.upto(counter.length - 1) do |i|
    counter[i] = counter[i - 1] + counter[i]
end
1.upto(counter2.length - 1) do |i|
    counter2[i] = counter2[i - 1] + counter2[i]
end

ans = 0
1.upto(counter.length - 1) do |i|
    d = counter[i] - counter2[i]
    if d > ans
        ans = d
    end
end

puts ans
