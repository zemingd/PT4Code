#require 'pp'

n, c = gets.split.map(&:to_i)
sw = Array.new(n)
sw2 = Array.new(n)
t_max = 0
n.times do |i|
    s, t, _ = gets.split.map(&:to_i)
    sw[i] = s
    sw2[i] = t

    if t > t_max
        t_max = t
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

#pp counter
#pp counter2

ans = 0
1.upto(counter.length - 1) do |i|
    d = counter[i] - counter2[i]
    if d > ans
        ans = d
    end
end

puts ans
