s = gets.chomp.split("").map(&:to_i)
k = gets.chomp.to_i
head_count_one = 0
next_num = -1

s.each do |i|
    if i == 1 then
        head_count_one += 1
    else
        next_num = i
        break
    end
end

puts head_count_one >= k ? 1 : next_num