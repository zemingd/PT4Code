require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i).sort

counter = {}
a_n.each do |a|
    counter[a] ||= 0
    counter[a] += 1
end
# 番兵(counterが3つ以上あることを保証する)
counter[10 ** 8] = 0
counter[10 ** 9] = 0

max = 0
counter.each_cons(3) do |x, y, z|
    count = x[1]
    if x[0] + 1 == y[0]
        count += y[1]
        if y[0] + 1 == z[0]
            count += z[1]
        end
    end

    if max < count
        max = count
    end
end

puts max

