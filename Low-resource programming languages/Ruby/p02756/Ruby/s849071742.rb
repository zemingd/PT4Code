#require 'pp'

s = gets.chomp!.chars
q = gets.to_i

reverse = false
memo = []

q.times do |i|
    q1, q2, q3 = gets.split
    if q1 == '1'
        # 反転
        reverse = !reverse
    else
        if q2 == '1'
            # 先頭に追加
            if reverse == false
                memo << [q3, :head]
            else
                memo << [q3, :tail]
            end
        else
            # 末尾に追加
            if reverse == false
                memo << [q3, :tail]
            else
                memo << [q3, :head]
            end
        end
    end
end

ans = s
memo.each do |m|
    if reverse == false
        if m[1] == :head
            ans.unshift(m[0])
        else
            ans.push(m[0])
        end
    else
        if m[1] == :head
            ans.push(m[0])
        else
            ans.unshift(m[0])
        end
    end
end

puts ans.join
