n = gets.split(//).map(&:to_i)

num = 0
ans = []
n.each do |i|
    if i == 9
        ans[num] = 1
    else
        ans[num] = 9
    end
    num = num + 1
end

puts ans.join.to_s