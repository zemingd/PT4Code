#require 'pp'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)
a_n.unshift(-1)

memo = {}
1.upto(n) do |i|
    memo[i] = -1
end

n.downto(1) do |baisu|
    x = baisu
    count = 0
    while x <= n
        if memo[x] == 1
            count += 1
        end
        x += baisu
    end
    
    if count % 2 == 0
        memo[baisu] = a_n[baisu]
    else
        memo[baisu] = (a_n[baisu] + 1) % 2
    end
    #pp count
    #pp memo
end

sum = 0
answer = []
memo.each do |k, v|
    if v == 1
        sum += 1
        answer << k
    end
end

puts sum
answer_str = answer.join(" ")
if answer_str != ""
    puts answer_str
end

