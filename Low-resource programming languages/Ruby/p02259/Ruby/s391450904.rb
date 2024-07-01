N = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i)

count = 0
0.upto(N-1) do |i|
    #N-1=4
    (N-1).downto(0) do |j|
        if nums[j] < nums[j-1] && j != 0
            nums[j], nums[j-1] = nums[j-1], nums[j]
            count += 1
        end
    end
end
output_str = ""
nums.each_with_index do |num,i|
    if i >=1
        output_str += " #{num}"
    else
        output_str = "#{num}"
    end
end
puts output_str
p count

