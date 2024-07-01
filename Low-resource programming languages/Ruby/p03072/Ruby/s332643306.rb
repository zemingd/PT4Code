N = gets.chomp.to_i
count = 0
prev_max = 0
nums = gets.chomp.split(" ").map(&:to_i)
nums.each_with_index do |num, i|
    if i == 0
        count += 1
        prev_max = num
    else
        if prev_max <= num
            count += 1
            prev_max = num
        end
    end
end

puts count