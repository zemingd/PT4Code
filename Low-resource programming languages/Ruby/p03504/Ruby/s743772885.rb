require 'pp'

n, c = gets.split.map(&:to_i)
sw = []
sw2 = []
memo = {}
t_max = 0

n.times do |i|
    s, t, c = gets.split.map(&:to_i)
    memo[c] ||= {}
    if memo[c][s]
        s2 = memo[c].delete(s)
        memo[c][t] = s2
    else
        memo[c][t] = s
    end
end

memo.each do |ch, r|
    r.each do |ed, st|
        sw << st
        sw2 << ed

        if ed > t_max
            t_max = ed
        end
    end
end
sw.sort!
sw2.sort!

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
