input = gets.chomp.split(" ")
stack = []
input.each do |e|
    if e == "+"
        nums = stack.pop(2)
        stack.push(nums[0] + nums[1])
    elsif e == "-"
        nums = stack.pop(2)
        stack.push(nums[0] - nums[1])
    elsif e == "*"
        nums = stack.pop(2)
        stack.push(nums[0] * nums[1])
    else
        stack.push(e.to_i)
    end
end

puts stack[0]
