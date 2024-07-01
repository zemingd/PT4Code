n = gets.chomp.to_i
result = 0
nums = {}
n.times{
    |i|
    a = gets.chomp.to_i
    if( nums[a]==1 )
        result -= 1
        nums[a] = 0
    else
        result += 1
        nums[a] = 1
    end
}
puts result