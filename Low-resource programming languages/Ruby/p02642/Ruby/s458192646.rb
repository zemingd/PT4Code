n = gets.to_i
a_n = gets.split.map(&:to_i).sort!
max = a_n.max
memo = Array.new(max + 1, 1)

ans = Hash.new(0)
n.times do |i|
    if ans.has_key?(a_n[i])
        ans[a_n[i]] = 0
    end

    next if memo[a_n[i]] == 0

    ans[a_n[i]] += 1
    x = a_n[i]
    x.step(max, x) do |st|
        memo[st] = 0
    end
end

puts ans.count {|k, v| v == 1}
