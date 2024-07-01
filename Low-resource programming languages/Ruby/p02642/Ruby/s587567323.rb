n = gets.to_i
a_n = gets.split.map(&:to_i).sort!
max = a_n.max
memo = Array.new(max + 1, 1)

count = 0
n.times do |i|
    ok = true
    if a_n[i] == a_n[i+1]
        ok = false
    elsif memo[a_n[i]] == 0
        ok = false
    end

    if ok
        count += 1
    end

    x = a_n[i]
    x.step(max, x) do |st|
        break if memo[st] == 0
        memo[st] = 0
    end
end

puts count
